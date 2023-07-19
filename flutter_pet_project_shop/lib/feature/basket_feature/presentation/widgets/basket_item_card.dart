import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/presentation/cubit/basket_cubit.dart';

class BasketItemCard extends StatefulWidget {
  const BasketItemCard(
      {Key? key,
      required this.title,
      required this.imageUrl,
      required this.productId,
      required this.quantity,
      required this.price})
      : super(key: key);

  final String? title;
  final String? imageUrl;
  final double? price;
  final int? productId;
  final int? quantity;

  @override
  State<BasketItemCard> createState() => _BasketItemCardState();
}

class _BasketItemCardState extends State<BasketItemCard> {
  void changeQuantity(bool increment) {
    if (increment) {
      setState(() {
        context
            .read<BasketCubit>()
            .changeQuantity(productId: widget.productId, quantity: widget.quantity! + 1);
      });
    } else if (widget.quantity! != 1){
      setState(() {
        context
            .read<BasketCubit>()
            .changeQuantity(productId: widget.productId, quantity: widget.quantity! - 1);
      });
    }
    context.read<BasketCubit>().fetchBasket();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: const EdgeInsets.all(3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.lightBlue[200],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.network(
                '${widget.imageUrl}',
                height: 100,
                width: 100,
              ),
            ),
          ),
          SizedBox(
            width: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('${widget.price}'),
                Text(
                  '${widget.title}',
                  textAlign: TextAlign.center,
                ),
                Text('Cost: ${widget.price! * widget.quantity!}'),
                SizedBox(
                  height: 23,
                  child: ElevatedButton(
                    onPressed: () {
                      context
                          .read<BasketCubit>()
                          .deleteFromBasket(productId: widget.productId);
                      context.read<BasketCubit>().fetchBasket();
                    },
                    child: const Icon(Icons.delete_forever),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 23,
                child: ElevatedButton(
                  onPressed: () {
                    changeQuantity(true);
                  },
                  child: const Icon(Icons.add),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueAccent, width: 3),
                  borderRadius: const BorderRadius.all(Radius.circular(15)),
                ),
                child: Container(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    '${widget.quantity}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ),
              ),
              SizedBox(
                height: 23,
                child: ElevatedButton(
                  onPressed: () {
                    changeQuantity(false);
                  },
                  child: const Icon(Icons.remove),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
