import 'package:flutter/material.dart';



class TransactionForm extends StatelessWidget {

  final Function addTransaction;
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  void submitData(){
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text );
    if(enterTitle.isEmpty || enterAmount <= 0){
      return;
    }
    addTransaction(enterTitle, enterAmount );
  }

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
              onSubmitted: (_) => submitData(),
//                    onChanged: (val){
//                      titleInput = val
//                    },
            ),
            TextField(
              autocorrect: false,
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true ),
              onSubmitted: (_) => submitData(),
//              onChanged: (val){
//                amountInput = val;
//              },
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.blue,
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}
