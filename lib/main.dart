import 'package:flutter/material.dart';
import 'conclusao.dart';
import 'questionario.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _pergunta = 0;
  var _points = 0;
  final List<Map<String, Object>> perguntas = [
    {
      'texto': 'Quantos anos você tem?',
      'respostas': [
        {'texto': 'Menos de 15', 'valor': 10},
        {'texto': '15-18', 'valor': 12},
        {'texto': '19-22', 'valor': 14},
        {'texto': 'Mais de 22', 'valor': 18},
      ]
    },
    {
      'texto': 'Com o que você mais tem habilidade?',
      'respostas': [
        {'texto': 'Design', 'valor': 10},
        {'texto': 'Listas', 'valor': 8},
        {'texto': 'Objetos', 'valor': 5},
        {'texto': 'Animação', 'valor': 3},
      ]
    },
    {
      'texto': 'Qual seu objetivo?',
      'respostas': [
        {'texto': 'Aprender', 'valor': 3},
        {'texto': 'Desenvolver', 'valor': 4},
        {'texto': 'Trabalhar', 'valor': 5},
        {'texto': 'Ajudar', 'valor': 8},
      ]
    },
  ];
  void _responder(int valor) {
    nTerminou
        ? setState(() {
            _pergunta++;
            _points += valor;
          })
        : null;
  }

  void _reiniciar() {
    setState(() {
      _pergunta = 0;
      _points = 0;
    });
  }

  bool get nTerminou {
    return _pergunta < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
          centerTitle: true,
        ),
        body: nTerminou
            ? Questionario(
                lista: perguntas,
                indice: _pergunta,
                func: _responder,
              )
            : Conclusao(
                pontuacao: _points,
                reiniciar: _reiniciar,
              ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PerguntaApp extends StatefulWidget {
  _PerguntaAppState createState() => _PerguntaAppState();
}
