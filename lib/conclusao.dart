import 'package:flutter/material.dart';

class Conclusao extends StatelessWidget {
  final int pontuacao;
  final Function reiniciar;
  const Conclusao(
      {super.key, required this.pontuacao, required this.reiniciar});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Parabéns',
            style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
          ),
          Text(
            'Sua pontuação: ${pontuacao.toString()}',
            style: const TextStyle(fontSize: 16),
          ),
          TextButton(
              onPressed: () {
                reiniciar();
              },
              child: const Text('Começar novamente'))
        ],
      ),
    );
  }
}
