import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repository/user_login_repository.dart';
import '../cubit/login_cubit.dart';
import 'account_page.dart';
import 'login_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key, this.accessKey}) : super(key: key);

  final String? accessKey;

  @override
  Widget build(BuildContext context) {
    final user = FirebaseAuth.instance.currentUser;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Welcome to the SHOP'),
        actions: [
          IconButton(
            onPressed: () {
              user == null
                  ? Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const LoginPage()),
              )
                  : Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AccountPage()),
              );
            },
            icon: Icon(
              Icons.person,
              color: user == null ? Colors.white : Colors.lightGreenAccent,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: user == null
              ? Text('No Auth $accessKey')
              : Text('Welcome to the BEST shop! $accessKey'),
        ),
      ),
    );
  }
}
