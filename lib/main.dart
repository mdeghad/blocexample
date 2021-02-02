import 'dart:developer';

import 'package:blocexample/model/counter.dart';
import 'package:blocexample/view/incrementbloc.dart';
import 'package:blocexample/view/registration.dart';
import 'file:///C:/Users/user1/AndroidStudioProjects/blocexample/lib/bloc/bloc_counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
// This widget is the root of your application.
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primaryColor: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Registration(),
  );
}
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
 // final _bloc = Bloc_Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Bloc Example"),
      ),

    );
  }

  // @override
  // void dispose() {
  //   super.dispose();
  //   //dispose all the controller
  //   _bloc.dispose();
  }
