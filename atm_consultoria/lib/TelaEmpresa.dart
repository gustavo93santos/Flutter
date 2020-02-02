import 'package:flutter/material.dart';

class TelaEmpresa extends StatefulWidget {
  @override
  _TelaEmpresaState createState() => _TelaEmpresaState();
}

class _TelaEmpresaState extends State<TelaEmpresa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Empresa"),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            children: <Widget>[
              
              Row(
                children: <Widget>[
                  Image.asset("images/detalhe_empresa.png"),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "Sobre a Empresa",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.deepOrange,
                      ),
                    ),
                  )
                ],
              ),

              Padding(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados"
                  "Todas estas questões, devidamente ponderadas, levantam dúvidas sobre se a necessidade de renovação processual apresenta tendências no sentido de aprovar a manutenção dos métodos utilizados na avaliação de resultados",
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