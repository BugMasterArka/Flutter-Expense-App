import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  final Function addTx;

  NewTransaction(this.addTx, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              // onChanged: (value) {
              //   titleInput = value;
              // },
              controller: titleController,
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              // onChanged: (value) => amountInput = value,
              controller: amountController,
            ),
            TextButton(
              onPressed: () {
                // print(amountInput);
                // print(titleInput);
                addTx(titleController.text, double.parse(amountController.text));
              },
              style: const ButtonStyle(
                  foregroundColor: MaterialStatePropertyAll(Colors.purple)),
              child: const Text('Add Transaction'),
            )
          ],
        ),
      ),
    );
  }
}
