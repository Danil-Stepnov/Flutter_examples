import 'package:email_validator/email_validator.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/cubit/login_cubit.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/pages/verify_email_page.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/presentation/services/snack_bar_service.dart';

import '../../domain/repository/user_login_repository.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => UserLoginCubit(context.read<UserLoginRepository>()),
      child: const _SignUpPage(),
    );
  }
}

class _SignUpPage extends StatefulWidget {
  const _SignUpPage({Key? key}) : super(key: key);

  @override
  State<_SignUpPage> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<_SignUpPage> {
  bool isHiddenPassword = true;
  TextEditingController emailTextInputController = TextEditingController();
  TextEditingController passwordTextInputController = TextEditingController();
  TextEditingController passwordTextRepeatController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void dispose() {
    emailTextInputController.dispose();
    passwordTextInputController.dispose();
    passwordTextRepeatController.dispose();
    super.dispose();
  }

  void togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }

  Future<void> signUp() async {
    final isValid = formKey.currentState!.validate();

    if (!isValid) return;

    if (passwordTextInputController.text != passwordTextRepeatController.text) {
      SnackBarService.showSnackBar(
        context,
        'Passwords must match',
        true,
      );
      return;
    }

    String email = emailTextInputController.text.trim();
    String password = passwordTextInputController.text.trim();

    context.read<UserLoginCubit>().signUp(email, password);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UserLoginCubit, UserLoginState>(
      builder: (context, state) {
        return BlocListener<UserLoginCubit, UserLoginState>(
          listener: (context, state) {
            if (state.status.isSignUp) {
              Navigator.pushNamedAndRemoveUntil(
                  context, '/verify_email', (route) => false);
            }
            if (state.status.isError) {
              SnackBarService.showSnackBar(
                context,
                'This email is already in use',
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
              title: const Text('Sign up'),
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
                    TextFormField(
                      autocorrect: false,
                      controller: passwordTextRepeatController,
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
                    ElevatedButton(
                      onPressed: signUp,
                      child: const Center(child: Text('Sign up')),
                    ),
                    const SizedBox(height: 30),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text(
                        'Canсel',
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
