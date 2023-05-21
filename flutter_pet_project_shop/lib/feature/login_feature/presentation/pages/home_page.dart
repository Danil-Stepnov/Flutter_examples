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
    return BlocProvider(
      create: (_) => UserLoginCubit(context.read<UserLoginRepository>()),
      child: BlocBuilder<UserLoginCubit, UserLoginState>(
        buildWhen: (previousState, state) => previousState != state,
        builder: (context, state) {
          User? user = FirebaseAuth.instance.currentUser;
          print(user);
          return Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              title: const Text('Welcome to the SHOP'),
              actions: [
                IconButton(
                  onPressed: () {
                    user == null
                        ? Navigator.pushNamed(
                            context,
                            '/login',
                          )
                        : Navigator.pushNamed(
                            context,
                            '/account',
                          );
                  },
                  icon: Icon(
                    Icons.person,
                    color:
                        user == null ? Colors.white : Colors.lightGreenAccent,
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
        },
      ),
    );
  }
}
