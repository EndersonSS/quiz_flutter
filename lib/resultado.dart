import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

final int pontuacao;
final void Function() quandoReiniciarQuestionario;
Resultado(this.pontuacao, this.quandoReiniciarQuestionario); 

String get fraseResultado {
  if(pontuacao < 8){
    return 'Parabéns!';
  }else if (pontuacao < 12){
    return 'Vc é fera!';
  }else { 
    return 'Nivel Jedi';
  } 
}
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Center(   
          child: Text(
          fraseResultado,
          style: TextStyle(fontSize: 28),
          )
        ),
        FlatButton(
          child: Text(
            'Reinicar',
          style: TextStyle(fontSize: 18),),
          textColor: Colors.blue,
          onPressed: quandoReiniciarQuestionario,
        )
      ],
    );
      
  }
}