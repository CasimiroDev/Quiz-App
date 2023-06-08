import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  const Questao({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(vertical: 32),
      child: Text(texto,
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
    );
  }
}
