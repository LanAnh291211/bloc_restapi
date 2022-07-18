import 'package:bloc_abc/repository/user_repository.dart';
import 'package:flutter/material.dart';

import 'blocs/bloc_export.dart';
import 'view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return RepositoryProvider(
      create: (context) => UserRepository(),
      child: const MaterialApp(
        title: 'Flutter Demo',
        home:  MyHomePage(),
      ),
    );
  }
}
