import 'package:flutter/material.dart';
import 'package:flutter_pet_project_shop/router/router.dart';

import 'development.dart';

Future<void> main() async => await Development().init();

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //home: const FirebaseStream(),
      routerConfig: _appRouter.config(),
    );
  }
}
