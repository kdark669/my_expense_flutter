import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './models/transaction.dart';

class HomeView extends StatelessWidget {
  final List<Transaction> _transaction = [
    Transaction(
      id: '1',
      title: "Mobile Cover",
      amount: 70,
      date: DateTime.now(),
    ),
    Transaction(
      id: '2',
      title: "New Bag",
      amount: 31.5,
      date: DateTime.now(),
    ),
  ];

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
          Card(
            child: Container(
              padding: EdgeInsets.all(100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    autocorrect: true,
                    decoration: InputDecoration(labelText: "Title Of Expenses"),
                  ),
                  TextField(
                    autocorrect: true,
                    decoration: InputDecoration(labelText: 'Amount'),
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.blue,
                    onPressed: (){} ,
                  )
                ],
              ),
            ),
          ),
          Column(
            children: _transaction.map((tx) {
              return Card(
                  margin: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                              width: 2,
                            )),
                        padding: EdgeInsets.all(10.0),
                        child: Text(
                          '\$ ${tx.amount}',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat('yyyy-mm-dd').format(tx.date),
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ));
            }).toList(),
          )
        ],
      ),
    );
  }
}
