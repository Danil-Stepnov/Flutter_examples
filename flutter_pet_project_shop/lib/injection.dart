import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/mapper/basket_item_mapper.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/mapper/basket_mapper.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/mapper/basket_user_mapper.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/repository/basket_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/data/data_sources/store.dart';
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

  final store = Store(await SharedPreferences.getInstance());

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  final userLoginMapper = UserLoginMapper();
  final paginationMapper = PaginationMapper();
  final fileMapper = FileMapper();
  final imageMapper = ImageMapper(fileMapper: fileMapper);
  final colorsMapper = ColorsMapper();
  final categoryMapper = CategoryMapper();
  final itemMapper = ItemMapper(imageMapper: imageMapper, colorsMapper: colorsMapper, categoryMapper: categoryMapper);
  final listItemMapper = ListItemMapper(itemMapper: itemMapper, pagination: paginationMapper);
  final itemCardMapper = ItemMapper(imageMapper: imageMapper, colorsMapper: colorsMapper, categoryMapper: categoryMapper);
  final basketItemMapper = BasketItemMapper(itemMapper: itemMapper);
  final basketUserMapper = BasketUserMapper();
  final basketMapper = BasketMapper(basketItemMapper: basketItemMapper, basketUserMapper: basketUserMapper);

  final userLoginRepository = UserLoginRepositoryImpl(userLoginMapper, store);
  final catalogRepository = CatalogRepository(listItemMapper, itemCardMapper);
  final basketRepository = BasketRepositoryImpl(basketMapper, store);

  return MultiBlocProvider(
    providers: [
      RepositoryProvider<UserLoginRepository>(create: (_) => userLoginRepository),
      RepositoryProvider<CatalogRepository>(create: (_) => catalogRepository),
      RepositoryProvider<BasketRepositoryImpl>(create: (_) => basketRepository),
    ],
    child: app,
  );
}
