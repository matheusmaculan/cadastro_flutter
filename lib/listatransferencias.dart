import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'Formulariotransferencia.dart';
import 'itemtransferencia.dart';
import 'transferencia.dart';

class ListaTransferencias extends StatefulWidget {

  final List<Transferencia?> _transferencias = [];


  @override
  State<StatefulWidget> createState() {
    return ListaTransferenciasState();
  }
}

class ListaTransferenciasState extends State<ListaTransferencias> {

  get transferenciaRecebida => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Transferências', textAlign: TextAlign.center)),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice){
          final transferencia = widget._transferencias[indice];
          return ItemTransferencia(transferencia!);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          final Future<Transferencia?> future =  Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          }));
          future.then((transferenciaRecebida){
            Future.delayed(const Duration(seconds: 1), () {
            if(transferenciaRecebida != null) {
              setState(() {
                widget._transferencias.add(transferenciaRecebida);
              });
            }
          });
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
