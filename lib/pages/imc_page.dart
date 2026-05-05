import 'package:flutter/material.dart';

class ImcPage extends StatelessWidget {
  double altura = 0.5, peso = 40;

  Widget _buildSlider(String title, double value, double min, double max) {
    return Column(
      children: [
        Text(title),
        Slider(min: min, max: max, value: value, onChanged: (double valor) {}),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff3E5AB6),
        foregroundColor: Colors.white,
        title: Text("Calculadora IMC"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [_buildSlider("Altura", altura, 0.4, 2.1)],
        ),
      ),
    );
  }
}
