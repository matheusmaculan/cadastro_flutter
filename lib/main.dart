import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('Teste'),
                  subtitle: Text('Subtítulo'),
                )
              ),              Card(
                child: ListTile(
                  leading: Icon(Icons.monetization_on),
                  title: Text('2 Teste'),
                  subtitle: Text('2 Subtítulo'),
                )
              ),
            ],
          ),
          appBar: AppBar(
            title: Center(child: Text('Transferências', textAlign: TextAlign.center)),
          ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Icon(Icons.add),
        ),
      ),
    )
);
