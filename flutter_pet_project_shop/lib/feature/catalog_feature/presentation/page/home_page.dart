import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/repository/catalog_repository.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/presentation/cubit/catalog_cubit.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import '../../domain/entities/item_entities/item_entity.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CatalogCubit(context.read<CatalogRepository>()),
      child: const _HomePage(),
    );
  }
}

class _HomePage extends StatefulWidget {
  const _HomePage({Key? key}) : super(key: key);

  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<_HomePage> {
  final PagingController<int, Items> _pagingController =
      PagingController(firstPageKey: 1);

  @override
  void initState() {
    _pagingController.addPageRequestListener((offset) {
      context.read<CatalogCubit>().fetchItemsList(offset: offset);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return BlocConsumer<CatalogCubit, CatalogState>(
      listener: (context, state) {
        if (state.status.isSuccess) {
          if (state.listItems?.pagination?.page ==
              state.listItems?.pagination?.pages) {
            _pagingController.appendLastPage(state.listItems!.items);
          } else {
            _pagingController.appendPage(
                state.listItems!.items, state.listItems!.pagination!.page + 1);
          }
        }
      },
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.pink[100],
          resizeToAvoidBottomInset: false,
          appBar: AppBar(
            title: const Text('Welcome to the SHOP'),
            backgroundColor: Colors.lightBlue[200],
            actions: [
              IconButton(
                onPressed: () {
                  user == null
                      ? Navigator.pushNamed(
                          context,
                          '/login',
                        )
                      : Navigator.pushNamed(
                          context,
                          '/account',
                        );
                },
                icon: Icon(
                  Icons.person,
                  color: user == null ? Colors.white : Colors.lightGreenAccent,
                ),
              ),
            ],
          ),
          body: CupertinoScrollbar(
            child: CustomScrollView(
              slivers: [
                state.status.isLoading
                    ? SliverToBoxAdapter(
                        child: Container(
                          alignment: Alignment.topCenter,
                          margin: const EdgeInsets.only(top: 10),
                          child: const CircularProgressIndicator(),
                        ),
                      )
                    : const SliverToBoxAdapter(
                        child: SizedBox(
                          height: 10,
                        ),
                      ),
                productBuilder(),
                const SliverToBoxAdapter(
                  child: SizedBox(
                    height: 10,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  PagedSliverGrid<int, Items> productBuilder() {
    return PagedSliverGrid(
      pagingController: _pagingController,
      builderDelegate: PagedChildBuilderDelegate(
        newPageProgressIndicatorBuilder: (_) => Container(
          alignment: Alignment.topCenter,
          margin: const EdgeInsets.only(top: 10),
          child: const CircularProgressIndicator(),
        ),
        itemBuilder: (context, items, index) => SizedBox(
            height: 410,
            child: ItemCardForGridView(
              id: items.id,
              title: items.title,
              price: items.price,
              colors: items.colors,
              url: items.image?.file?.url,
            )),
      ),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, crossAxisSpacing: 5, mainAxisSpacing: 5),
    );
  }
}
