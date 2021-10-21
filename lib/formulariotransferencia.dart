
import 'package:cadastro_flutter/editor.dart';
import 'package:cadastro_flutter/transferencia.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return FormularioTransferenciaState();
  }
}

class FormularioTransferenciaState extends State<FormularioTransferencia>{

  final TextEditingController _controladorCampoNumeroConta =
  TextEditingController();
  final TextEditingController _controladorCampoValor = TextEditingController();

    @override
    Widget build(BuildContext context) {
      // TODO: implement build
      return Scaffold(
          appBar: AppBar(
            title: const Text('Criando Transferência'),
          ),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Editor(
                  controlador: _controladorCampoNumeroConta,
                  dica: '0000',
                  rotulo: 'Número da conta',
                ),
                Editor(
                  controlador: _controladorCampoValor,
                  dica: '0.00',
                  rotulo: 'Valor',
                  icone: Icons.monetization_on,
                ),
                ElevatedButton(
                  child: const Text('Confirmar'),
                  onPressed: () {
                    _criaTransferencia(context); //endif
                  },
                )
              ],
            ),
          ));
    }


  void _criaTransferencia(BuildContext context) {
    final int? numeroConta = int.tryParse(_controladorCampoNumeroConta.text);
    final double? valor = double.tryParse(_controladorCampoValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(valor, numeroConta);
      debugPrint('Criando Transferencia');
      Navigator.pop(context, transferenciaCriada);
    } //endif
  }
}
