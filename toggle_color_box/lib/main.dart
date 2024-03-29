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
  int countBox1 = 0;
  int countBox2 = 0;

  bool box1Color = false;
  bool box2Color = false;

  Color setBox1Color() {
    if (countBox1 == 0) {
      return Colors.grey;
    } else if (countBox1 == 1) {
      return Colors.red;
    } else if (countBox1 == 2) {
      return Colors.blue;
    } else if (countBox1 == 3) {
      return Colors.green;
    } else {
      countBox1 = 0;
      return Colors.grey;
    }
  }

  Color setBox2Color() {
    if (countBox2 == 0) {
      return Colors.grey;
    } else if (countBox2 == 1) {
      return Colors.green;
    } else if (countBox2 == 2) {
      return Colors.blue;
    } else if (countBox2 == 3) {
      return Colors.red;
    } else {
      countBox2 = 0;
      return Colors.grey;
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
                    countBox1++;
                  });
                },
                child: const Text(
                  "Color Box 1",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
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
                    countBox2++;
                  });
                },
                child: const Text(
                  "Color Box 2",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
