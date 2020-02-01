import 'package:flutter/material.dart';
import './homeView.dart';

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

