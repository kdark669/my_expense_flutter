import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> _transaction;
  //  constructor to get data rom parent
  TransactionList(this._transaction);
  @override
  Widget build(BuildContext context) {
    return  Column(
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
    );
  }
}
