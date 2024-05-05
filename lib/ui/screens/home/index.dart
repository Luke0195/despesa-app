import 'package:despesas/entities/transaction/index.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Transaction> transactions = [
      Transaction(
          id: '1241', title: 'any_title', value: 39.10, date: DateTime.now()),
      Transaction(
          id: '1242', title: 'any_title2', value: 200.10, date: DateTime.now()),
      Transaction(
          id: '1243', title: 'any_title3', value: 300.10, date: DateTime.now())
    ];
    return Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Despesas App',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                Icon(Icons.add, color: Colors.white)
              ],
            )),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              width: double.infinity,
              child: Card(
                color: Colors.blue,
                elevation: 5,
                child: Text('Gráfico'),
              ),
            ),
            const SizedBox(
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  child: Text('Lista de Transações'),
                )),
            Column(
                children: transactions.map((tr) {
              return Card(child: Text(tr.title));
            }).toList())
          ],
        ));
  }
}
