/*
import 'package:flutter/material.dart';

import 'controller/gasto_controller.dart';
import 'model/gasto.dart';
import 'view/cadastro_gasto_mensal.dart';

Future<void> main() async {
  */
/*runApp(MaterialApp(
    home: Cadastro(),
    theme: ThemeData(
        hintColor: Colors.deepOrangeAccent,
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          focusedBorder:
              OutlineInputBorder(borderSide: BorderSide(color: Colors.amber)),
          hintStyle: TextStyle(color: Colors.amber),
        )),
  ));*//*

  WidgetsFlutterBinding.ensureInitialized();

  GastoController gastoController = GastoController();
  GastoMensal gastoMensal = GastoMensal(1,2020,"Setembro","Conta de agua",50.9,"Fixo");
  gastoController.salvar(gastoMensal).then((res) => print(res));

  gastoMensal = GastoMensal(1,2020,"Agosto","Conta de luz",90.9,"Fixo");
  gastoController.salvar(gastoMensal).then((res) => print(res));

  List<GastoMensal> gastos = await gastoController.findAll();
  print(gastos);
}
*/

import 'package:flutter/material.dart';
import 'package:gasto_mensal/view/lista_gasto_mensal.dart';
void main() {
  runApp(MaterialApp(
    home: ListaGastoMensal(),
    theme: ThemeData(
        hintColor: Colors.amber,
        primaryColor: Colors.white,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
          OutlineInputBorder(borderSide: BorderSide(color:
          Colors.white)),
          focusedBorder:
          OutlineInputBorder(borderSide: BorderSide(color:
          Colors.amber)),
          hintStyle: TextStyle(color: Colors.amber),
        )),
  ));
}