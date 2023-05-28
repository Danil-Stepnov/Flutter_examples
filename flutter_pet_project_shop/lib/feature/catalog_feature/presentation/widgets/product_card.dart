import 'package:flutter/material.dart';

import '../../domain/entities/item_entities/color_entity.dart';

class ItemCardForGridView extends StatelessWidget {
  const ItemCardForGridView({
    Key? key,
    required this.id,
    required this.title,
    required this.price,
    required this.colors,
    required this.url,
  }) : super(key: key);

  final int? id;
  final String? title;
  final String? url;
  final double? price;
  final List<ColorsEnt> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20)
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.topCenter,
              child: Image.network('$url'),
            ),
          ),
          itemTitle(),
        ],
      ),
    );
  }
  Widget itemTitle() {
    return Text(
      '$title',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 15),
    );
  }
}
