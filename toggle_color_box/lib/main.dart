import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: ColorBox(),
    );
  }
}

class ColorBox extends StatefulWidget {
  const ColorBox({super.key});

  @override
  State<ColorBox> createState() => _ColorBoxState();
}

class _ColorBoxState extends State<ColorBox> {
  bool box1Color = false;
  bool box2Color = false;

  Color setBox1Color() {
    if (box1Color == false) {
      return Colors.red;
    } else {
      return Colors.green;
    }
  }

  Color setBox2Color() {
    if (box2Color == false) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Toggle Color Box",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        backgroundColor: Colors.deepPurple.shade200,
        centerTitle: true,
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Column 1
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140,
                width: 140,
                color: setBox1Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (box1Color == false) {
                      box1Color = true;
                    } else {
                      box1Color = false;
                    }
                  });
                },
                child: const Text("Color Box 1"),
              ),
            ],
          ),
          const SizedBox(
            width: 30,
          ),

          // Column 2
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 140,
                width: 140,
                color: setBox2Color(),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    if (box2Color == false) {
                      box2Color = true;
                    } else {
                      box2Color = false;
                    }
                  });
                },
                child: const Text("Color Box 2"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
