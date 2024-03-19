import 'package:flutter/material.dart';

class TodoDemo extends StatefulWidget {
  const TodoDemo({super.key});

  @override
  State<TodoDemo> createState() => _TodoDemoState();
}

class _TodoDemoState extends State<TodoDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Todo App",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: ListView.builder(
          itemBuilder: (context, index) {
            return Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 20,
                      width: 20,
                      margin: const EdgeInsets.all(5),
                      child: Image.network(
                          "data:image/png;base64,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"),
                    ),
                    const Text("Today's Date"),
                  ],
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
