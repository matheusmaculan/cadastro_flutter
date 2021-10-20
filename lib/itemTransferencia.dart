import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget{

  final String valor;
  final String numeroConta;

  ItemTransferencia(this.valor, this.numeroConta);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
        child: ListTile(
          leading: Icon(Icons.monetization_on),
          title: Text(valor),
          subtitle: Text(numeroConta),
        )
    );
  }

}