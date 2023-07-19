part of 'basket_cubit.dart';

enum BasketStatus { initial, loading, success, failure }

extension CatalogStatusX on BasketStatus {

  bool get isSuccess => this == BasketStatus.success;

  bool get isLoading => this == BasketStatus.loading;

  bool get isInitial => this == BasketStatus.initial;

}

class BasketState extends Equatable {
  const BasketState({this.status = BasketStatus.initial, this.items});

  final BasketStatus status;
  final BasketEnt? items;

  BasketState copyWith({
    BasketStatus? status,
    BasketEnt? items,
  }) {
    return BasketState(
      status: status ?? this.status,
      items: items ?? this.items,
    );
  }

  @override
  List<Object?> get props => [status, items];
}