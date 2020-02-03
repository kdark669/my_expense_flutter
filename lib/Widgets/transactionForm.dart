import 'package:flutter/material.dart';



class TransactionForm extends StatelessWidget {

  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  //  constructor

  TransactionForm(
      this.addTransaction,
      );

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
//        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              autocorrect: false,
              decoration: InputDecoration(labelText: "Title Of Expenses"),
              controller: titleController,
//                    onChanged: (val){
//                      titleInput = val
//                    },
            ),
            TextField(
              autocorrect: false,
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
//              onChanged: (val){
//                amountInput = val;
//              },
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.blue,
              onPressed: (){
                addTransaction(titleController.text, double.parse(amountController.text ));
              } ,
            )
          ],
        ),
      ),
    );
  }
}
