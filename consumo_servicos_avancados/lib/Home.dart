import 'package:consumo_servicos/Post.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  String urlBase = "https://jsonplaceholder.typicode.com";

  Future <List<Post>>_recuperarPostagens() async{

    http.Response response = await http.get(urlBase+ "/posts");
    var dadosJson = json.decode(response.body);

    List<Post> postagens = List();

    for(var post in dadosJson){
      Post p = Post(post["userId"], post["id"], post["title"], post["body"]);
      postagens.add(p);
    }
    return postagens;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Consumo de serviços avançados"),
      ),
      body:
      FutureBuilder<List<Post>>(
        future: _recuperarPostagens(),
        builder: (context, snapshot){

          switch( snapshot.connectionState ){
            case ConnectionState.none :
            case ConnectionState.waiting :
              return Center(
                child: CircularProgressIndicator(),
              );
              break;
            case ConnectionState.active :
            case ConnectionState.done :
              print("conexao done");
              if( snapshot.hasError ){
                print("Erro ao carregar os dados.");
              }else {
                print("Lista Carregou!!");
                return 
                ListView.builder(
                  itemCount: snapshot.data.length,
                  itemBuilder: (context, index){

                    List<Post> lista = snapshot.data;
                    Post post = lista[index];

                    return ListTile(
                      title: Text(post.title),
                      subtitle: Text(post.body),
                    );
                  }
                );
              }
              break;
          }
        },
      ),
    );
  }
}
