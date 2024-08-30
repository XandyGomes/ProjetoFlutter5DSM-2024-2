import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: const ListaTransferencia(),
          appBar: AppBar(
            //cololocar cor no texto Transferência
            title: const Text(
              "Transferência",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.blue,
          ),
          floatingActionButton: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.blue,
              child: const Icon(
                Icons.add,
                size: 35,
                color: Colors.white,
              )),
        ),
      ),
    );

class ListaTransferencia extends StatelessWidget {
  const ListaTransferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        ItemTransferencia(),
        ItemTransferencia(),
        ItemTransferencia(),
      ],
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  const ItemTransferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on, color: Colors.green),
        title: Text('1234-5'),
        subtitle: Text('100.0'),
      ),
    );
  }
}
