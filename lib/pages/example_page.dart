import 'package:flutter/material.dart';

class ExamplePage extends StatefulWidget {
  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  double textSize = 10;
  double rojo = 0;
  double verde = 0;
  double azul = 0;
  Widget _buildSlider(
    String title,
    double value,
    Color color,
    Function(double) onchanged,
  ) {
    return Column(
      children: [
        Text(title),
        Slider(
          min: 0,
          max: 255,
          value: value,
          onChanged: onchanged,
          activeColor: color,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Style Editor")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley",
              style: TextStyle(
                decoration: TextDecoration.combine([
                  TextDecoration.lineThrough,
                  TextDecoration.underline,
                  TextDecoration.overline,
                ]),
                fontSize: textSize,
                color: Color.fromRGBO(
                  rojo.toInt(),
                  verde.toInt(),
                  azul.toInt(),
                  1,
                ),
              ),
            ),
            _buildSlider(
              "Color Rojo",
              rojo,
              Colors.red,
              (v) => setState(() {
                rojo = v;
              }),
            ),
            _buildSlider(
              "Color Verde",
              verde,
              Colors.green,
              (v) => setState(() {
                verde = v;
              }),
            ),
            _buildSlider(
              "Color Azul",
              azul,
              Colors.blue,
              (v) => setState(() {
                azul = v;
              }),
            ),
            Text("Editor de tamaño"),
            Slider(
              min: 5,
              max: 35,
              value: textSize,
              onChanged: (double mandarina) {
                textSize = mandarina;
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
