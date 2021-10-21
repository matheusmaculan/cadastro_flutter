import 'package:cadastro_flutter/ListaTransferencias.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'formulariotransferencia.dart';

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        body: ListaTransferencias(),
      ),
    );
  }
}
