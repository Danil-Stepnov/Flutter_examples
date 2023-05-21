import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../pages/home_page.dart';
import '../pages/verify_email_page.dart';

class FirebaseStream extends StatelessWidget {
  const FirebaseStream({Key? key}) : super(key: key);

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
          }
          return const HomePage();
        });
  }
}
