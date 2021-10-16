import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text('Cadastro de Clientes', textAlign: TextAlign.center)),
          ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
        ),
      ),
    )
);
