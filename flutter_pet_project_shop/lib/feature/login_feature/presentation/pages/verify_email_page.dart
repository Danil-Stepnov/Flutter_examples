import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/account_page.dart';

import 'package:flutter_pet_project_shop/feature/login_feature/presentation/services/snack_bar_service.dart';

import '../../domain/repository/user_login_repository.dart';
import '../cubit/login_cubit.dart';
import '../../../catalog_feature/presentation/page/home_page.dart';

class VerifyEmailPage extends StatelessWidget {
  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserLoginCubit.emailVerify(context.read<UserLoginRepository>()),
      child: const _VerifyEmailPage(),
    );
  }
}

class _VerifyEmailPage extends StatefulWidget {
  const _VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<_VerifyEmailPage> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<_VerifyEmailPage> {

  Future<void> sendVerificationEmail() async {
    try {
      context.read<UserLoginCubit>().emailVerify();
    } catch (e) {
      if (mounted) {
        SnackBarService.showSnackBar(
          context,
          '$e',
          true,
        );
      }
    }
  }

// спросить у кого нибудь, кажется тут очень сильно дерево виджетов засирается
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Email verification'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'A confirmation email has been sent to your email',
                style: TextStyle(fontSize: 20),
              ),
              BlocBuilder<UserLoginCubit, UserLoginState>(
                buildWhen: (previousState, state) => previousState != state,
                builder: (context, state) {
                  return ElevatedButton.icon(
                    onPressed:
                        state.canResendEmail? sendVerificationEmail : null,
                    icon: const Icon(Icons.email),
                    label: const Text('Resend'),
                  );
                },
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  context.read<UserLoginCubit>().deleteUser();
                  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
                },
                child: const Text(
                  'Отменить',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
