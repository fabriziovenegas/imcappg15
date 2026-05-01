import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class RichTextPage extends StatefulWidget {
  @override
  State<RichTextPage> createState() => _RichTextPageState();
}

class _RichTextPageState extends State<RichTextPage> {
  bool isImportant = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          isImportant = !isImportant;
          setState(() {});
        },
      ),
      appBar: AppBar(title: Text("RichTextPage")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Hola mundo!"),
            RichText(
              text: TextSpan(
                text: "Hola",
                style: TextStyle(color: Colors.black, fontSize: 25),
                children: [
                  TextSpan(
                    text: "Mundo",
                    style: TextStyle(color: Colors.red, fontSize: 40),
                  ),
                  TextSpan(
                    text: "Desde Flutter",
                    style: TextStyle(color: Colors.blue),
                    children: [TextSpan(text: "Que tal")],
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            RichText(
              text: TextSpan(
                text: "Haz click",
                style: TextStyle(color: Colors.black, fontSize: 30),
                children: [
                  TextSpan(
                    text: "Aquí",
                    style: TextStyle(
                      color: Colors.blue,
                      decoration: TextDecoration.underline,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        print("Texto Clickeado");
                      },
                  ),
                ],
              ),
            ),
            SizedBox(height: 32),
            RichText(
              text: TextSpan(
                text: "H",
                style: TextStyle(color: Colors.cyan, fontSize: 50),
                children: [
                  TextSpan(
                    text: "2",
                    style: TextStyle(color: Colors.red, fontSize: 30),
                  ),
                  TextSpan(text: "0"),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Texto con imágenes",
                style: TextStyle(color: Colors.orange, fontSize: 25),
                children: [
                  WidgetSpan(child: Icon(Icons.favorite, color: Colors.red)),
                  TextSpan(
                    text: "Más TEXTO",
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            RichText(
              text: TextSpan(
                text: "Este es un texto",
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: isImportant ? "Importante" : "Normal",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: isImportant
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isImportant ? Colors.red : Colors.orange,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
