import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


import 'dart:convert';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {



  _recuperarCep() async {

    String cep = "01311300";
    String url = "https://viacep.com.br/ws/${cep}/json/";

    http.Response response;

    response = await http.get(url);

    Map <String, dynamic> retorno = json.decode(response.body);

    String logradouro = retorno["logradouro"];
    String complemento = retorno["complemento"];
    String bairro = retorno["bairro"];
    String localidade = retorno["localidade"];

    print(
      "Resposta logradouro: ${logradouro} complemento: ${complemento} bairro: ${bairro} localidade: ${localidade}"
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviço web"),
      ),
      body: Container(
        padding: EdgeInsets.all(40),
        child: Column(
          children: <Widget>[
            RaisedButton(
              child: Text("Clique Aqui"),
              onPressed: _recuperarCep,
            )
          ],
        ),
      ),
    );
  }
}