import 'package:flutter/material.dart';

class TelaServico extends StatefulWidget {
  @override
  _TelaServicoState createState() => _TelaServicoState();
}

class _TelaServicoState extends State<TelaServico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Serviço"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_servico.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Nossos Serviços",
                      style: TextStyle(
                        fontSize: 20,
                        //color: Colors.blueGrey,
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Consultoria",
                  textAlign: TextAlign.justify,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Calculo de preços",
                  textAlign: TextAlign.justify,
                ),
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Acompanhamento de projetos",
                  textAlign: TextAlign.justify,
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}