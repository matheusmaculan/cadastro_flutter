 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'FormularioTransferencia.dart';

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return   MaterialApp(
      home: Scaffold(
        body: FormularioTransferencia(),
      ),
    );
  }
}
