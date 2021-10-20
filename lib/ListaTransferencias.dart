import 'package:cadastro_flutter/Transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'itemTransferencia.dart';

class ListaTransferencias extends StatelessWidget { // criei uma classe e peguei por herança uma classe pra poder usar acima no BODY
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: <Widget>[
          ItemTransferencia(Transferencia(100.0,6512)),
          ItemTransferencia(Transferencia(250.0,42337)),
          ItemTransferencia(Transferencia(300.0,3838)),
        ]
    );
  }
}