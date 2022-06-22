import 'package:day1/view/home.dart';
import 'package:day1/view/widgets/day-3.dart';
import 'package:day1/view/widgets/home2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'blocs/Color_bloc/Color_bloc.dart';
import 'blocs/Color_bloc/Color_state.dart';
import 'blocs/internet_bloc/internet_bloc.dart';
import 'blocs/sign_in/sign_in_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider(
        create: (context) => ColorBloc(),
        child: Home(),
      ),
    );
    // return BlocProvider(
    //   create: (context) => InternetBloc(),
    //   child: MaterialApp(
    //     debugShowCheckedModeBanner: false,
    //     title: 'Flutter Demo',
    //     theme: ThemeData(
    //       primarySwatch: Colors.blue,
    //     ),
    //     home: Home(),
    //   ),
    // );
  }
}
