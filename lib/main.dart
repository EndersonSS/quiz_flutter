import 'package:flutter/material.dart';
import 'package:quiz_app/questionario.dart';
import 'package:quiz_app/resultado.dart';

main() => runApp(PerguntaApp());


class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;
  var _pontuacaoTotal = 0;

  final _perguntas = const [
        {
          'texto': 'Qual é a sua cor favorita?',
          'respostas': [
            {'texto': 'Amarelo', 'pontuacao': 10}, 
            {'texto': 'Azul', 'pontuacao': 1},
            {'texto': 'Verde', 'pontuacao': 3},
            {'texto': 'Vermelho', 'pontuacao': 4},
            ],
        },
        {
          'texto': 'Qual é o seu animal preferido?',
          'respostas': [
            {'texto': 'cachorro', 'pontuacao': 10}, 
            {'texto': 'gato', 'pontuacao': 1}, 
            {'texto': 'cobra', 'pontuacao': 3}, 
            {'texto': 'cavalo', 'pontuacao': 2},
          ],     
        },  
        { 
          'texto': 'Qual seu presidente favorito ?',
          'respostas': [
            {'texto': 'Bolsonaro', 'pontuacao': 10}, 
            {'texto': 'Lula', 'pontuacao': 1}, 
            {'texto': 'Dilma', 'pontuacao': 5}, 
            {'texto': 'Color', 'pontuacao': 4}, 
            ],
        }
  ];
  
    void _responder(int pontuacao){
      if (temPerguntaSelecionada){
         setState(() {
        _perguntaSelecionada++;
        _pontuacaoTotal += pontuacao;
      });
      }
    }

    void _reiniciarQuestionario(){
      setState((){
        _perguntaSelecionada = 0;
        _pontuacaoTotal = 0;
      }); 
    }

  bool get temPerguntaSelecionada{
    return _perguntaSelecionada < _perguntas.length;

 }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Perguntas'),
        ), 
        body: temPerguntaSelecionada 
          ? Questionario(
              perguntas: _perguntas,
              perguntaSelecionada: _perguntaSelecionada,
              quantoResponder: _responder,
            )
          : Resultado(_pontuacaoTotal, _reiniciarQuestionario),
        ),
      );
    }
  }

  class PerguntaApp extends StatefulWidget {

    _PerguntaAppState createState() {
      return _PerguntaAppState();
  }
}
