import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../data/repository/catalog_repository.dart';
import '../../domain/entities/item_entities/item_entity.dart';

part 'item_card_state.dart';

class ItemCardCubit extends Cubit<ItemCardState> {
  ItemCardCubit(this._catalogRepository) : super(const ItemCardState());
  final CatalogRepository _catalogRepository;

  Future<void> fetchItemCard(int? itemId) async {
    emit(state.copyWith(status: ItemCardStatus.loading));
    try {
      final item = await _catalogRepository.getItemCard(id: itemId);
      emit(state.copyWith(status: ItemCardStatus.success, item: item));
    } on Exception {
      emit(state.copyWith(status: ItemCardStatus.failure));
    }
    catch (e) {
      emit(state.copyWith(status: ItemCardStatus.failure));
    }
  }
}
