import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/repository/basket_repository.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/presentation/cubit/basket_cubit.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/presentation/widgets/basket_item_card.dart';

@RoutePage()
class BasketPage extends StatelessWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => BasketCubit(context.read<BasketRepositoryImpl>()),
      child: const _BasketPage(),
    );
  }
}

class _BasketPage extends StatelessWidget {
  const _BasketPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<BasketCubit>().initialFetchBasket();
    return BlocBuilder<BasketCubit, BasketState>(
      builder: (context, state) {
        if (state.status.isInitial) {
          return const Scaffold(
            body: CircularProgressIndicator(),
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text("Basket"),
          ),
          body: Container(
            alignment: Alignment.topCenter,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(5),
            child: Column(
              children: [
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, int index) {
                      return BasketItemCard(
                        title: state.items?.items![index].product?.title,
                        imageUrl: state
                            .items?.items![index].product?.image?.file?.url,
                        productId: state.items?.items![index].product?.id,
                        quantity: state.items?.items![index].quantity,
                        price: state.items?.items![index].price,
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      thickness: 3,
                      color: Colors.blueAccent,
                    ),
                    itemCount: state.items?.items?.length ?? 1,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.pinkAccent)),
                      child: const Text('ORDER',
                      style: TextStyle(
                        fontSize: 20,
                      ),),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Icon(Icons.shopping_bag),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
