import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet_project_shop/feature/basket_feature/presentation/page/basket_page.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/presentation/page/home_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/signup_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/account_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/login_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/verify_email_page.dart';
import 'package:flutter_pet_project_shop/feature/catalog_feature/presentation/page/item_card_page.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page, path: '/'),
    AutoRoute(page: LoginRoute.page, path: '/login'),
    AutoRoute(page: SignUpRoute.page, path: '/login/signup'),
    AutoRoute(page: VerifyEmailRoute.page, path: '/verify_email'),
    AutoRoute(page: AccountRoute.page, path: '/account'),
    AutoRoute(page: ItemCardRoute.page, path: '/item_card'),
    AutoRoute(page: BasketRoute.page, path: '/basket')
        /// routes go here
  ];
}