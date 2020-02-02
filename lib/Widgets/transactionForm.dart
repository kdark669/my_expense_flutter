import 'package:flutter/material.dart';



class TransactionForm extends StatelessWidget {

  final titleController = TextEditingController();
//  final amountController = TextEditingController();
  String amountInput;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(100),
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
              onChanged: (val){
                amountInput = val;
              },
            ),
            FlatButton(
              child: Text('Add Transaction'),
              textColor: Colors.blue,
              onPressed: (){
                print(titleController.text );
                print(amountInput);
              } ,
            )
          ],
        ),
      ),
    );
  }
}
