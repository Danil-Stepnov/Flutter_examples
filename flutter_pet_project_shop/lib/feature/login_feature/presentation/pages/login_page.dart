import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_pet_project_shop/feature/login_feature/presentation/cubit/login_cubit.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/signup_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/services/snack_bar_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/repository/user_login_repository.dart';
import '../../../catalog_feature/presentation/page/home_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserLoginCubit(context.read<UserLoginRepository>()),
      child: const _LoginPage(),
    );
  }
}

class _LoginPage extends StatefulWidget {
  const _LoginPage({Key? key}) : super(key: key);

  @override
  State<_LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<_LoginPage> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override // Уничтожаем котроллеры когда закрывается страничка
  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> login() async {
    final isValid = formKey.currentState!.validate();

    if (!isValid) return;
    String email = emailTextInputController.text.trim();
    String password = passwordTextInputController.text.trim();
    context.read<UserLoginCubit>().fetchUserLogin(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserLoginCubit, UserLoginState>(
      builder: (context, state) {
        return BlocListener<UserLoginCubit, UserLoginState>(
          listener: (context, state) {
            if (state.status.isSignIn) {
              Navigator.of(context).pushNamedAndRemoveUntil(
                '/',
                (Route<dynamic> route) => false,
              );
            }
            if (state.status.isError) {
              SnackBarService.showSnackBar(
                context,
                'Wrong email or password, please try again',
                true,
              );
            }

            if (state.status.isFailure) {
              SnackBarService.showSnackBar(
                context,
                'Unknown error!',
                true,
              );
            }
          },
          child: Scaffold(
            appBar: AppBar(
              title: const Text('Login'),
            ),
            body: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      autocorrect: false,
                      controller: emailTextInputController,
                      validator: (email) =>
                          email != null && !EmailValidator.validate(email)
                              ? 'Please enter a valid email'
                              : null,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Enter email',
                      ),
                    ),
                    const SizedBox(height: 30),
                    TextFormField(
                      autocorrect: false,
                      controller: passwordTextInputController,
                      obscureText: isHiddenPassword,
                      validator: (value) => value != null && value.length < 6
                          ? 'Min 6 symbole'
                          : null,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
                        hintText: 'Enter password',
                        suffix: InkWell(
                          onTap: togglePasswordView,
                          child: Icon(
                            isHiddenPassword
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    ElevatedButton(
                      onPressed: login,
                      child: const Center(child: Text('Login')),
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login/signup');
                      },
                      child: const Text(
                        'Sign up',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.of(context).pushNamed('/reset_password'),
                      child: const Text(
                        'Reset password',
                        style: TextStyle(decoration: TextDecoration.underline),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
