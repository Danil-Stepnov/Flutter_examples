import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:rick_and_morty_example/bloc_observable.dart';
import 'package:rick_and_morty_example/ui/pages/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = CharacterBlocObservable();
  HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: await getTemporaryDirectory());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rick and Morty',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.black,
        fontFamily: 'Georgia',
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white),
          headlineMedium: TextStyle(
          fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          headlineSmall: TextStyle(fontSize: 24.0, color: Colors.white),
          bodyLarge: TextStyle(
            fontSize: 20, fontWeight: FontWeight.w500, color: Colors.white),
          bodyMedium: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w200, color: Colors.white),
          bodySmall: TextStyle(
              fontSize: 12, fontWeight: FontWeight.w200, color: Colors.white),
          labelSmall: TextStyle(
              fontSize: 11, fontWeight: FontWeight.w100, color: Colors.grey),
        )
      ),

      home: HomePage(title: 'Rick and Morty'),
    );
  }
}
