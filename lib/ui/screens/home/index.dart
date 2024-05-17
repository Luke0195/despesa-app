import 'package:despesas/entities/transaction/index.dart';
import 'package:despesas/ui/screens/home/components/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final titleController = TextEditingController();
  final valueController = TextEditingController();

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

    List<Widget> widgetTransactions = transactions
        .map((transaction) => TransactionItem(transaction))
        .toList();
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
        body: Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: SizedBox(
              height: 250,
              child: Container(
                  decoration: BoxDecoration(
                      border:
                          Border.all(width: 2, color: Colors.grey.shade400)),
                  padding: const EdgeInsets.only(left: 8, right: 8),
                  margin: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 42,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8, right: 8),
                          child: TextField(
                            onChanged: (value) => titleController.text = value,
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(8),
                                labelText: 'Titulo',
                                hintText: 'Informe o Título da Transação',
                                focusColor: Colors.blue.shade400,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.blue.shade500))),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      SizedBox(
                        height: 42,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                          child: TextField(
                            keyboardType: TextInputType.phone,
                            onChanged: (value) =>
                                {valueController.text = value},
                            textAlignVertical: TextAlignVertical.center,
                            decoration: InputDecoration(
                                contentPadding: const EdgeInsets.all(8),
                                labelText: 'Transação',
                                hintText: 'Informe o Valor da Transação R\$ ',
                                focusColor: Colors.blue.shade400,
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        width: 1,
                                        color: Colors.blue.shade500))),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: SizedBox(
                          height: 42,
                          width: double.infinity,
                          child: TextButton(
                              onPressed: null,
                              style: ButtonStyle(
                                  elevation:
                                      const MaterialStatePropertyAll(5.0),
                                  shape: MaterialStatePropertyAll(
                                      RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(6.0))),
                                  backgroundColor:
                                      const MaterialStatePropertyAll(
                                          Colors.blue)),
                              child: const Text(
                                'Nova Transação',
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      )
                    ],
                  )),
            )));
  }
}
