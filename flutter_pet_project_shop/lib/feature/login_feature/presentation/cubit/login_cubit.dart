import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/domain/entities/user_login_entities.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/domain/repository/user_login_repository.dart';

part 'login_state.dart';

class UserLoginCubit extends Cubit<UserLoginState> {
  UserLoginCubit(this._userLoginRepository) : super(const UserLoginState());

  UserLoginCubit.emailVerify(this._userLoginRepository)
      : super(const UserLoginState()) {
    bool isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;
    Timer? timer;

    Future<void> checkEmailVerified() async {
      if (FirebaseAuth.instance.currentUser == null) {
        timer?.cancel();
        return;
      }
      await FirebaseAuth.instance.currentUser?.reload();

      isEmailVerified = FirebaseAuth.instance.currentUser!.emailVerified;

      if (isEmailVerified) timer?.cancel();
    }

    if (!isEmailVerified) {
      emailVerify();

      timer = Timer.periodic(
        const Duration(seconds: 3),
        (_) => checkEmailVerified(),
      );
    }
  }

  final UserLoginRepository _userLoginRepository;

  Future<void> fetchUserLogin(email, password) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      final accessKey = await _userLoginRepository.getUserAccessKey();
      emit(
          state.copyWith(status: UserLoginStatus.signIn, accessKey: accessKey));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        emit(state.copyWith(status: UserLoginStatus.error));
      } else {
        emit(state.copyWith(status: UserLoginStatus.failure));
      }
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    emit(state.copyWith(status: UserLoginStatus.signOut));
  }

  Future<void> signUp(email, password) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      emit(state.copyWith(status: UserLoginStatus.signUp));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        emit(state.copyWith(status: UserLoginStatus.error));
      } else {
        emit(state.copyWith(status: UserLoginStatus.failure));
      }
    }
  }

  Future<void> emailVerify() async {
    final user = FirebaseAuth.instance.currentUser!;
    await user.sendEmailVerification();
    emit(state.copyWith(canResendEmail: false));
    await Future.delayed(const Duration(seconds: 5));
    if (FirebaseAuth.instance.currentUser == null) return;
    emit(state.copyWith(canResendEmail: true));
  }

  Future<void> deleteUser() async {
    FirebaseAuth.instance.currentUser!.delete();
    FirebaseAuth.instance.signOut();
    emit(state.copyWith(status: UserLoginStatus.signOut));
  }
}
