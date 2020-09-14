
import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  
  var _perguntaSelecionada = 0;

  void _responder(){
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
  }

  //teste

  @override
  Widget build(BuildContext context){
    final List<String> perguntas = [
      'Qual é a sua cor favorita',
      'Qual é seu animal favorito',
      
      
      
    ];

    return MaterialApp(
      home: Scaffold(    
        appBar: AppBar(
          title: Text('Perguntas'),
        ),
        body: Column(
          children: [
            Questao(perguntas[_perguntaSelecionada]),
            Resposta('Resposta 11'),
            Resposta('Resposta 22'),
            Resposta('Resposta 33')
            //RaisedButton(
            //  child: Text('Resposta 1'),
            //  onPressed: _responder,
            //),
            //RaisedButton(
            //  child: Text('Resposta 2'),
            //  onPressed: _responder,
            //),
            //RaisedButton(
            //  child: Text('Resposta 3'),
            //  onPressed: _responder,
            //)

          ],
        ),
      )
    );
  }

}


class PerguntaApp extends StatefulWidget {

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }

}
