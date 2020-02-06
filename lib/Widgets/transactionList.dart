import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';


class TransactionList extends StatelessWidget {
  final List<Transaction> _transaction;
  //  constructor to get data rom parent
  TransactionList(this._transaction);
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 300,
      child: ListView.builder(
          itemBuilder: (BuildContext context, int index){
            return Card(
                child: Row(
                  children: <Widget>[

//                    amount of expense
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
                        '\$ ${_transaction[index].amount.toStringAsFixed(2)}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

//                    name of expense
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          _transaction[index].title,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          DateFormat('yyyy-mm-dd').format(_transaction[index].date),
                          style: TextStyle(
                              fontWeight: FontWeight.normal,
                              color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ));
          },
          itemCount: _transaction.length,
      ),
    );

  }
}
