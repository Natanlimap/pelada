import 'package:flutter/material.dart';

class VirilhaCard extends StatelessWidget {
  const VirilhaCard({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Card(
      child: Container(
        color: Colors.deepOrange,
        width: size.width,
        child: SafeArea(
          child: Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              'assets/camisa.png',
              color: Colors.white.withOpacity(0.5),
              colorBlendMode: BlendMode.modulate,
              height: 200,
            ),
          ),
        ),
      ),
    );
  }
}
