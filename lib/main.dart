import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: FormularioTranferencia(),
        ),
      ),
    );

class FormularioTranferencia extends StatelessWidget {
  const FormularioTranferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("TESTE");
  }
}

class ListaTransferencia extends StatelessWidget {
  const ListaTransferencia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //cololocar cor no texto Transferência
        title: const Text(
          "Transferência",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          ItemTransferencia(Transferencia(100.0, 1234)),
          ItemTransferencia(Transferencia(150.0, 3245)),
          ItemTransferencia(Transferencia(1169.0, 14564)),
          ItemTransferencia(Transferencia(12515.0, 5827)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          size: 35,
          color: Colors.white,
        ),
      ),
    );
  }
}

class ItemTransferencia extends StatelessWidget {
  final Transferencia _transferencia;

  const ItemTransferencia(this._transferencia, {super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.monetization_on, color: Colors.green),
        title: Text(_transferencia.valor.toString()),
        subtitle: Text(_transferencia.numeroConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double? valor; //
  final int numeroConta;

  Transferencia(this.valor, this.numeroConta);
}
