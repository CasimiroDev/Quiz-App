import 'package:flutter/material.dart';
import 'resposta.dart';
import 'questao.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> lista;
  final int indice;
  final Function func;
  const Questionario(
      {super.key,
      required this.lista,
      required this.indice,
      required this.func});

  bool get nTerminou {
    return indice < lista.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = nTerminou
        ? lista[indice].cast()['respostas'] as List<Map<String, Object>>
        : [];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Questao(
          texto: lista[indice]["texto"].toString(),
        ),
        ...respostas
            .map((resp) => Resposta(texto: resp, func: (){func(resp['valor']);}))
            .toList(),
      ],
    );
  }
}
