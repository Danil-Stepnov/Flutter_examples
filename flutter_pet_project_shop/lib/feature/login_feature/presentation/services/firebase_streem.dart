import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pet_project_shop/feature/login_feature/data/repository/user_login_repository.dart';


import '../pages/home_page.dart';
import '../pages/verify_email_page.dart';

class FirebaseStream extends StatelessWidget {
  const FirebaseStream({Key? key, required this.userLoginRepository}) : super(key: key);

  final UserLoginRepositoryImpl userLoginRepository;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Scaffold(
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.warning_amber,
                      size: 130,
                    ),
                    Text(
                      'Something went wrong!',
                      style: TextStyle(fontSize: 30),
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasData) {
            if (!snapshot.data!.emailVerified) {
              return const VerifyEmailPage();
            }
          }
          return const HomePage();
        });
  }
}
