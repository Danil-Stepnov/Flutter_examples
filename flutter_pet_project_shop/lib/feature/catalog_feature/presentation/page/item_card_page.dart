import 'package:auto_route/auto_route.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/repository/basket_repository.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/presentation/cubit/basket_cubit.dart';

import '../../data/repository/catalog_repository.dart';
import '../cubit/item_card_cubit.dart';

@RoutePage()
class ItemCardPage extends StatelessWidget {
  const ItemCardPage({Key? key, required this.itemId}) : super(key: key);

  final int? itemId;

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ItemCardCubit>(
          create: (context) => ItemCardCubit(context.read<CatalogRepository>()),
        ),
        BlocProvider<BasketCubit>(
          create: (context) => BasketCubit(context.read<BasketRepositoryImpl>()),
        ),
      ],
      child: _ItemCardPage(itemId: itemId),
    );
  }
}

class _ItemCardPage extends StatefulWidget {
  const _ItemCardPage({Key? key, required this.itemId}) : super(key: key);

  final int? itemId;

  @override
  State<_ItemCardPage> createState() => _ItemCardPageState();
}

class _ItemCardPageState extends State<_ItemCardPage> {
  int quantity = 0;

  @override
  void initState() {
    context.read<ItemCardCubit>().fetchItemCard(widget.itemId);
    super.initState();
  }

  void changeQuantity(bool increase) {
    if (increase) {
      setState(() {
        quantity++;
      });
    } else {
      if (quantity != 0) {
        setState(() {
          {
            quantity--;
          }
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Item card'),
      ),
      body: Column(
        children: [
          BlocBuilder<ItemCardCubit, ItemCardState>(
            builder: (context, state) {
              if (state.status.isSuccess) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 600,
                      alignment: Alignment.topCenter,
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        border: Border.all(color: Colors.blueAccent),
                        color: const Color(0xfff5eaf6),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            height: 350,
                            child: ClipRRect(
                              borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                              child: Image.network('${state.item!.image?.file
                                  ?.url}'),
                            ),
                          ),
                          Text(
                            '${state.item!.title}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(fontSize: 20),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '${state.item?.price?.toInt()} ',
                                textAlign: TextAlign.center,
                                style: const TextStyle(fontSize: 30),
                              ),
                              const Icon(
                                Icons.currency_ruble,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              }
              if (state.status.isFailure) {
                return Scaffold(
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.error),
                      Text('ERROR'),
                    ],
                  ),
                );
              }
              return Container(
                color: Colors.white,
                child: const Center(
                  child: CircularProgressIndicator(),
                ),
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              ElevatedButton(
                onPressed: () {
                  changeQuantity(false);
                },
                child: const Icon(Icons.remove),
              ),

              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 3),
                  borderRadius:
                  const BorderRadius.all(Radius.circular(20)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    '$quantity',
                    style: const TextStyle(fontSize: 30),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  changeQuantity(true);
                },
                child: const Icon(Icons.add),
              ),

            ],
          ),
          BlocBuilder<BasketCubit, BasketState>(
            builder: (context, state) {
              return ElevatedButton(
                onPressed: () {
                  if (FirebaseAuth.instance.currentUser != null) {
                    context.read<BasketCubit>().addToBasket(
                        productId: widget.itemId, quantity: quantity);
                  }
                },
                child: const SizedBox(
                  width: 250,
                  child: Icon(Icons.shopping_cart_outlined),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
