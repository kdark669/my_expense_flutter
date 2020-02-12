import 'package:flutter/material.dart';

class TransactionForm extends StatefulWidget {
  final Function addTransaction;
  TransactionForm(this.addTransaction);

  @override
  //constructor
  _TransactionFormState createState() => _TransactionFormState();
}

class _TransactionFormState extends State<TransactionForm> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  void submitData(){
    final enterTitle = titleController.text;
    final enterAmount = double.parse(amountController.text );
    if(enterTitle.isEmpty || enterAmount <= 0){
      return;
    }
    widget.addTransaction(enterTitle, enterAmount );
    Navigator.of(context).pop();
  }

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
              textColor: Theme.of(context).primaryColorDark,
              onPressed: submitData,
            )
          ],
        ),
      ),
    );
  }
}
