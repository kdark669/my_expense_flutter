import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'transactionList.dart';
import 'transactionForm.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
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

//  method to add new trnasaction

  void _addNewTransaction(String txtitle, double txamount) {
    final newTx = Transaction(
      id:DateTime.now().toString(),
      date: DateTime.now(),
      title:  txtitle,
      amount: txamount
    );

    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
//        _addNewTransaction pass the pointer
        TransactionForm(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
