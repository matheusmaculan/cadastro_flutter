import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ListaTransferencias.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: ListaTransferencias(),
          appBar: AppBar(
            title: const Center(child: Text('Transferências', textAlign: TextAlign.center)),
          ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: const Icon(Icons.add),
        ),
      ),
    )
);


