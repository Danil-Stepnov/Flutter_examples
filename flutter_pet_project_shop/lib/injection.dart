import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/color_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/file_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/image_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/item_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/list_item_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/mapper/pagination_mapper.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/data/repository/catalog_repository.dart';
import 'package:flutter_pet_project_shop/feature/data/mapper/response_mappers/category_mapper.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/mapper/user_login_mapper.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/repository/user_login_repository.dart';

import 'feature/login_feature/domain/repository/user_login_repository.dart';
import 'firebase_options.dart';

Future<Widget> injection(Widget app) async {

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final userLoginMapper = UserLoginMapper();
  final paginationMapper = PaginationMapper();
  final fileMapper = FileMapper();
  final imageMapper = ImageMapper(fileMapper: fileMapper);
  final colorsMapper = ColorsMapper();
  final categoryMapper = CategoryMapper();
  final itemMapper = ItemMapper(imageMapper: imageMapper, colorsMapper: colorsMapper, categoryMapper: categoryMapper);
  final lastItemMapper = ListItemMapper(itemMapper: itemMapper, pagination: paginationMapper);

  final userLoginRepository = UserLoginRepositoryImpl(userLoginMapper);
  final catalogRepository = CatalogRepository(lastItemMapper);

  return MultiBlocProvider(
    providers: [
      RepositoryProvider<UserLoginRepository>(create: (_) => userLoginRepository),
      RepositoryProvider<CatalogRepository>(create: (_) => catalogRepository),
    ],
    child: app,
  );
}
