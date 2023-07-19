import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/repository/basket_repository.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/domain/entities/basket_entities/get_basket_entity.dart';

part 'basket_state.dart';

class BasketCubit extends Cubit<BasketState> {
  BasketCubit(this._basketRepository) : super(const BasketState());

  final BasketRepositoryImpl _basketRepository;

  Future<void> initialFetchBasket() async {
    emit(state.copyWith(status: BasketStatus.initial));
    try{
      final basket = await _basketRepository.getBasket();
      emit(state.copyWith(status: BasketStatus.success, items: basket));
    } on Exception {
      emit(state.copyWith(status: BasketStatus.failure));
    }
  }

  Future<void> fetchBasket() async {
    emit(state.copyWith(status: BasketStatus.loading));
    try{
      final basket = await _basketRepository.getBasket();
      emit(state.copyWith(status: BasketStatus.success, items: basket));
    } on Exception {
      emit(state.copyWith(status: BasketStatus.failure));
    }
  }

  Future<void> addToBasket({required int? productId, required int? quantity}) async {
    emit(state.copyWith(status: BasketStatus.loading));
    try{
      await _basketRepository.postToBasket(productId: productId, quantity: quantity);
      emit(state.copyWith(status: BasketStatus.success));
    } on Exception {
      emit(state.copyWith(status: BasketStatus.failure));
    }
  }

  Future<void> changeQuantity({required int? productId, required int? quantity}) async {
    emit(state.copyWith(status: BasketStatus.loading));
    try{
      await _basketRepository.changeQuantity(productId: productId, quantity: quantity);
      emit(state.copyWith(status: BasketStatus.success));
    } on Exception {
      emit(state.copyWith(status: BasketStatus.failure));
    }
  }

  Future<void> deleteFromBasket({required int? productId}) async {
    emit(state.copyWith(status: BasketStatus.loading));
    try{
      await _basketRepository.deleteFromBasket(productId: productId);
      emit(state.copyWith(status: BasketStatus.success));
    } on Exception {
      emit(state.copyWith(status: BasketStatus.failure));
    }
}

}
