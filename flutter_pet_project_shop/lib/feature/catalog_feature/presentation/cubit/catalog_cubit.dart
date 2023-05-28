import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/repository/catalog_repository.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/domain/entities/item_entities/list_item_entity.dart';

part 'catalog_state.dart';

class CatalogCubit extends Cubit<CatalogState> {
  CatalogCubit(this._catalogRepository) : super(const CatalogState());

  final CatalogRepository _catalogRepository;

  Future<void> fetchItemsList({required offset}) async {
    emit(state.copyWith(status: CatalogStatus.loading));
    try {
      final listItem = await _catalogRepository.getAllItems(offset: offset);
      emit(state.copyWith(status: CatalogStatus.success, listItems: listItem));
    } on Exception {
      emit(state.copyWith(status: CatalogStatus.failure));
    }
    catch (e) {
      emit(state.copyWith(status: CatalogStatus.failure));
    }
  }
}
