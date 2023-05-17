import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/person_bloc.dart';
import 'package:rickandmorty/data/repositories/person_repo.dart';
import 'package:rickandmorty/ui/pages/search_page.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  final PersonRepo repository = PersonRepo();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => PersonBloc(personRepo: repository),
        child: Container(child: SearchPage()),
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(40, 40, 50, 1),
        title: const Text("Rick and morty"),
      ),
    );
  }
}
