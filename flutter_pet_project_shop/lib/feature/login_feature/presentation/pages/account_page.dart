import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/cubit/login_cubit.dart';

import '../../domain/repository/user_login_repository.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserLoginCubit(context.read<UserLoginRepository>()),
      child: const _AccountPage(),
    );
  }
}

class _AccountPage extends StatefulWidget {
  const _AccountPage({Key? key}) : super(key: key);

  @override
  State<_AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<_AccountPage> {
  final user = FirebaseAuth.instance.currentUser;

  Future<void> signOut() async {
    final navigator = Navigator.of(context);
    context.read<UserLoginCubit>().signOut();
    print("HERE!");
    navigator.pushNamedAndRemoveUntil('/home', (Route<dynamic> route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: const Text('Account'),
        actions: [
          BlocBuilder<UserLoginCubit, UserLoginState>(
            builder: (context, state) {
              return IconButton(
                onPressed: signOut,
                icon: const Icon(Icons.logout),
                tooltip: 'Logout',
              );
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Your email: ${user?.email}'),
            const Text('Вот и ВСЁ'),
          ],
        ),
      ),
    );
  }
}
