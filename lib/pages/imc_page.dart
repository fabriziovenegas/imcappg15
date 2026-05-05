import 'package:flutter/material.dart';

class ImcPage extends StatefulWidget {
  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  double altura = 0.5, peso = 40;

  Widget _buildSlider(
    String title,
    double value,
    double min,
    double max,
    Function(double) onChanged,
  ) {
    return Column(
      children: [
        Text(title),
        RichText(
          text: TextSpan(
            text: value.toStringAsFixed(1),
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            children: [TextSpan(text: "m.", style: TextStyle(fontSize: 20))],
          ),
        ),

        Slider(min: min, max: max, value: value, onChanged: onChanged),
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
          children: [
            _buildSlider("Altura", altura, 0.4, 2.1, (v) {
              altura = v;
              setState(() {});
            }),
          ],
        ),
      ),
    );
  }
}
