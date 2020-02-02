import 'dart:math';

import 'package:cara_ou_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  void _exibirResultado(){

    var itens = ["cara","coroa"];
    var resultado = itens[Random().nextInt(itens.length)];

    Navigator.push(
      context, 
      MaterialPageRoute(builder: (context) => Resultado(resultado))
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset("images/logo.png"),
            GestureDetector(
              child: Image.asset("images/botao_jogar.png"),
              onTap: _exibirResultado,
            )
          ],
        ),
      ),
    );
  }
}