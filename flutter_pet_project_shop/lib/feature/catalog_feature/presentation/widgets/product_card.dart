import 'package:flutter/material.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/presentation/widgets/item_color_circle.dart';

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
      padding: const EdgeInsets.all(5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white70,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.center,
              child: Image.network('$url'),
            ),
          ),
          itemTitle(),
          SizedBox(
            height: 20,
            child: Center(
              child: itemPrice(),
            ),
          ),
          SizedBox(
            height: 10,
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ColorCircle(
                  code: colors[index].code,
                );
              },
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: colors.length,
            ),
          )
        ],
      ),
    );
  }

  Widget itemTitle() {
    return Text(
      '$title',
      textAlign: TextAlign.center,
      style: const TextStyle(fontSize: 13),
    );
  }

  Widget itemPrice() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${price?.toInt()} ',
          textAlign: TextAlign.center,
          style: const TextStyle(fontSize: 13),
        ),
        const Icon(
          Icons.currency_ruble,
          size: 13,
        ),
      ],
    );
  }
}
