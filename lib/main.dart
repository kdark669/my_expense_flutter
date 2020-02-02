import 'package:flutter/material.dart';
import 'Widgets/viewWidgets/homeView.dart';

void main() =>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expense Tracker',
      home: HomeView(),
    );
  }
}

