import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie_bloc_demo/bloc/home_bloc.dart';
import 'package:foodie_bloc_demo/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeBloc(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(title: 'Foodie Application Demo'),
      ),
    );
  }
}
