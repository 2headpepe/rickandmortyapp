import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rickandmorty/bloc/person_bloc.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:rickandmorty/ui/widgets/person_widget.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  void initState() {
    context.read<PersonBloc>().add(const PersonEvent.fetch(name: '', page: 1));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final state = context.watch<PersonBloc>().state;

    return state.when(
        loading: () {
          return const Center(
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CircularProgressIndicator(
                strokeWidth: 2,
              ),
              SizedBox(
                width: 10,
              ),
              Text("Loading..."),
            ]),
          );
        },
        loaded: (personStateLoaded) {
          return SingleChildScrollView(
            child: Container(
              color: const Color.fromRGBO(50, 50, 60, 1),
              child: Column(
                children: [
                  for (var e in personStateLoaded.results)
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16, top: 16, right: 16),
                      child: PersonCard(e: e),
                      // ClipRRect(
                      //   borderRadius: BorderRadius.circular(20.0),
                      //   child: Container(
                      //     color: Colors.deepPurpleAccent[100],
                      //     alignment: Alignment.center,
                      //     height: 80,
                      //     child: ListTile(
                      //       // tileColor: Colors.deepPurpleAccent[100],
                      //       // selectedColor: Colors.deepPurpleAccent[50],
                      //       leading: ClipRRect(
                      //         borderRadius: BorderRadius.circular(10.0),
                      //         child:
                      //       ),
                      //       title: Text(e.name),
                      //       subtitle: Text(e.species + " " + e.gender),
                      //       trailing: Text(e.status),
                      //     ),
                      //   ),
                      // ),
                    ),
                  // )
                ],
              ),
            ),
          );
        },
        error: () => Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Error"),
                const SizedBox(
                  height: 10,
                ),
                CachedNetworkImage(
                  imageUrl:
                      "https://wallpapers.com/images/hd/morty-smith-sad-face-on-the-floor-6q4d390wvbebmak5.jpg",
                  placeholder: (context, url) =>
                      const CircularProgressIndicator(),
                  errorWidget: (context, url, error) => const Icon(Icons.error),
                ),
              ],
            ));
  }
}
//  const factory Results({
//     required int id,
//     required String species,
//     required String gender,
//   }) = _Results;
