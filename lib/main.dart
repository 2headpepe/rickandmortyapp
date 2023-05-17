import 'package:flutter/material.dart';
import 'package:rickandmorty/ui/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Rick",
        theme: ThemeData(
            textTheme: const TextTheme(
                caption: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w100,
          // color: Colors.
        ))),
        home: HomePage(
          title: "Rick",
        ));
  }
}

class HelloPage extends StatelessWidget {
  const HelloPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Column(children: [
        Text('''
Introducing an advanced app that uses the Flutter framework and an API to bring the world of Rick and Morty characters to your smartphone. With seamless integration and the bloc architecture, this app provides real-time, comprehensive information about characters, including names, species, origins, and more. Experience the captivating world of Rick and Morty with this immersive and user-friendly app, perfect for fans and newcomers alike.'''),
      ]),
    );
  }
}
