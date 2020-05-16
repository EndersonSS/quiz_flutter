import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());
  
class _PerguntaAppState extends State<PerguntaApp> {
  
  var perguntaSelecionada = 0;

  void responder(){
    setState(() {
      perguntaSelecionada++;
    });
    print(perguntaSelecionada);
  }

    Widget build(BuildContext context) {

      final List<String> perguntas = [
        'Qual é a sua cor favorita?'
        'Qual é o seu animal preferido?'
    '   Qual seu presidente favorito ?'
      ];
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text(perguntas[perguntaSelecionada]),
          ), 
          body: Column(
            children: <Widget>[
                Text(perguntas[0]),
                RaisedButton(
                  child: Text("Resposta 1"),                
                  onPressed: responder
                  ,),
                RaisedButton(
                  child: Text("Resposta 2"),                
                  onPressed: responder
                  ,),
                RaisedButton(
                  child: Text("Resposta 3"),                
                  onPressed: responder
                  ,)  
            ],
          )        
          )
      );
    }
}
  class PerguntaApp extends StatefulWidget {

    _PerguntaAppState createState() => _PerguntaAppState();
  }
