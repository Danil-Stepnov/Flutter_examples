part of 'catalog_cubit.dart';

enum CatalogStatus { initial, loading, success, failure }

extension CatalogStatusX on CatalogStatus {

  bool get isSuccess => this == CatalogStatus.success;

  bool get isLoading => this == CatalogStatus.loading;

}

class CatalogState extends Equatable {
  const CatalogState({this.status = CatalogStatus.initial, this.listItems});

  final CatalogStatus status;
  final ListItemsEnt? listItems;

  CatalogState copyWith({
    CatalogStatus? status,
    ListItemsEnt? listItems,
  }) {
    return CatalogState(
      status: status ?? this.status,
      listItems: listItems ?? this.listItems,
    );
  }

  @override
  List<Object?> get props => [status, listItems];
}
