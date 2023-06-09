import 'package:flutter/material.dart';
import 'package:rick_and_morty_example/bloc/character_bloc.dart';
import 'package:rick_and_morty_example/data/repositories/character_repo.dart';
import 'package:rick_and_morty_example/ui/pages/search_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final repository = CharacterRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: BlocProvider(
        create: (context) => CharacterBloc(characterRepo: repository),
        child: Container(
            decoration: const BoxDecoration(color: Colors.black87),
            child: const SearchPage()),
      ),
    );
  }
}
