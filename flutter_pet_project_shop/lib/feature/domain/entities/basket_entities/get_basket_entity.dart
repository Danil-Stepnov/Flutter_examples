import 'package:equatable/equatable.dart';

import 'basket_items.dart';
import 'user_for_get_basket.dart';

class BasketEnt extends Equatable {
  final List<BasketItemsEnt>? items;
  final UserInformationEnt? user;

  const BasketEnt({
    required this.items,
    required this.user,
  });

  @override
  List<Object?> get props => [items, user];

  BasketEnt copyWith({
    List<BasketItemsEnt>? items,
    UserInformationEnt? user,
  }) {
    return BasketEnt(
      items: items ?? this.items,
      user: user ?? this.user,
    );
  }
}
