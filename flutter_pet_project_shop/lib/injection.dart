import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/mapper/user_login_mapper.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/repository/user_login_repository.dart';

import 'feature/login_feature/domain/repository/user_login_repository.dart';
import 'firebase_options.dart';

Future<Widget> injection(Widget app) async {

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final userLoginMapper = UserLoginMapper();

  final userLoginRepository = UserLoginRepositoryImpl(userLoginMapper);

  return MultiBlocProvider(
    providers: [
      RepositoryProvider<UserLoginRepository>(create: (_) => userLoginRepository),
    ],
    child: app,
  );
}
