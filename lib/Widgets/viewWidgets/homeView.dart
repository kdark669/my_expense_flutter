import 'package:flutter/material.dart';
import '../transactionList.dart';
import '../../models/transaction.dart';
import '../transactionForm.dart';


class HomeView extends StatefulWidget{
  @override
  _MyHomeViewState createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<HomeView>{

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

  void _startAddTransactionModal(BuildContext ctx){
    showModalBottomSheet(context: ctx , builder: (bCtx){
      return GestureDetector(
        onTap: () {},
        child: TransactionForm(_addNewTransaction),
        behavior: HitTestBehavior.opaque,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expense Tracker"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _startAddTransactionModal(context),
          )
        ],
      ),
      body: SingleChildScrollView(
        child:  Column(
//        mainAxisAlignment: MainAxisAlignment.start ,

          children: <Widget>[

//          chart
            Card(
              child: Container(
                child: Center(
                  child: Text('Chart'),
                ),
              ),
              color: Colors.amber,
              elevation: 1.0,
            ),

//          userTransaction

            TransactionList(_userTransaction),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:() => _startAddTransactionModal(context),
      ),
    );
  }
}
