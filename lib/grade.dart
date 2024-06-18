import 'package:flutter/material.dart';
import 'package:flutter_aula11_4/itens.dart';

class Grade extends StatelessWidget {
  const Grade({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
          itemCount: Itens.letras.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemBuilder: (context, index) {
            return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 50,
                  width: 50,
                  color: Colors.blue,
                  child: Center(child: Text(Itens.letras[index])),
                ));
          }),
    );
  }
}
