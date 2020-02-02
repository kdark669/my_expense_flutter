import 'package:flutter/material.dart';
import '../userTransaction.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
      ),
      body: Column(
//        mainAxisAlignment: MainAxisAlignment.start ,
        children: <Widget>[
          Card(
            child: Container(
              width: double.infinity,
              child: Center(
                child: Text('Chart'),
              ),
            ),
            color: Colors.amber,
            elevation: 15.0,
          ),
          UserTransaction()
        ],
      ),
    );
  }
}
