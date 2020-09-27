import 'package:flutter/material.dart';
import 'package:gasto_mensal/controller/gasto_controller.dart';
import 'package:gasto_mensal/model/gasto.dart';

import 'cadastro_gasto_mensal.dart';
import 'lista_gasto_mensal.dart';

class GastoItem extends StatelessWidget {
  final GastoMensal _gastoMensal;
  GastoItem(this._gastoMensal);
  GastoController _gastoController = GastoController();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.amber,
      child: ListTile(
        title: Text(
          _gastoMensal.finalidade,
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        subtitle: Text(
          _gastoMensal.valor.toStringAsFixed(2),
          style: TextStyle(
            fontSize: 12.0,
          ),
        ),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => Cadastro(gm: _gastoMensal),
            ),
          );
        },
        onLongPress: () {
          _gastoController.excluir(_gastoMensal.id);
          Navigator.of(context).setState(() {});
        },
      ),
    );
  }
}
