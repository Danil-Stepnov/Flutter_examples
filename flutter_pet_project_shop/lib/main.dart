import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/mapper/user_login_mapper.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/repository/user_login_repository.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/account_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/login_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/verify_email_page.dart';

import 'development.dart';
import 'feature/login_feature/presentation/pages/home_page.dart';
import 'feature/login_feature/presentation/pages/signup_page.dart';


Future<void> main() async => await Development().init();

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const FirebaseStream(),
      routes: {
        '/': (context) => const HomePage(),
        '/login': (context) => const LoginPage(),
        '/login/signup': (context) => const SignUpPage(),
        '/verify_email': (context) => const VerifyEmailPage(),
        '/account': (context) => const AccountPage(),
      },
      initialRoute: '/',
    );
  }
}
