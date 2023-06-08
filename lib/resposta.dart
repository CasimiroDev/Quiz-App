import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  final Map texto;
  final Function func;
  const Resposta({super.key, required this.texto, required this.func});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 24),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
        color: Colors.blue,
      ),
      child: TextButton(
        onPressed: () {
          func();
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              texto["texto"],
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              texto["valor"].toString(),
              textAlign: TextAlign.center,
              style: const TextStyle(color: Colors.white60, fontSize: 12),
            ),
          ],
        ),
      ),
    );
  }
}
