import 'package:flutter/cupertino.dart';
import 'itemTransferencia.dart';

class Transferencias extends StatelessWidget { // criei uma classe e peguei por herança uma classe pra poder usar acima no BODY
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
        children: <Widget>[
          ItemTransferencia('100.00', '3838'),
          ItemTransferencia('250.00', '541'),
          ItemTransferencia('400.00', '123'),
        ]
    );
  }
}