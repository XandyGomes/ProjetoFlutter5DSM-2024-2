import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: const Card(
              child: Column(
            children: [
              Text('Teste1'),
              Text('Teste2'),
              Text('Teste3'),
              Text('33333333333333333333333333333333'),
            ],
          )),
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
            child: const Icon(Icons.add),
          ),
        ),
      ),
    );
