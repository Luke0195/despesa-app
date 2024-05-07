import 'package:despesas/entities/transaction/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionItem(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(5),
      child: Container(
          width: double.infinity,
          decoration:
              BoxDecoration(border: Border.all(color: Colors.grey, width: 2)),
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(50)),
                    child: Container(
                        color: Colors.purple,
                        width: 60,
                        height: 60,
                        alignment: Alignment.center,
                        child: Text("R\$ ${transaction.value}"))),
                Column(
                  children: [
                    Text(transaction.title),
                    Text("${transaction.date}")
                  ],
                )
              ],
            ),
          )),
    );
  }
}
