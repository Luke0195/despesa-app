import 'dart:ui';

import 'package:despesas/entities/transaction/index.dart';
import 'package:despesas/utils/formatters/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class TransactionItem extends StatelessWidget {
  final Transaction transaction;
  const TransactionItem(this.transaction, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 70,
        margin: const EdgeInsets.symmetric(
          horizontal: 4,
          vertical: 5,
        ),
        decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300, width: 1)),
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  alignment: Alignment.center,
                  width: 60,
                  height: 60,
                  decoration: const BoxDecoration(color: Colors.purple),
                  child: Text(
                    "R\$ ${transaction.value.toStringAsFixed(2)}",
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 10),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      transaction.title,
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16),
                    ),
                    Text(
                        parseDateToString(
                            currentDate: transaction.date,
                            mask: "dd/MM/yyyy hh:MM:ss"),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.normal,
                          fontSize: 13,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
