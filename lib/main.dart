import 'package:bdd_isearch/di/di_initialiser.dart';
import 'package:bdd_isearch/feature/free_text/presentation/free_text_search_page.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FreeTextSearchPage(),
    );
  }
}
