import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({super.key});

  @override
  State<ListViewDemo> createState() => _ListViewDemo();
}

class _ListViewDemo extends State<ListViewDemo> {
  List<String> imagesList = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxgsAdYwbhSWac_oLPH1iFITE7KxYVt7iNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxgsAdYwbhSWac_oLPH1iFITE7KxYVt7iNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxgsAdYwbhSWac_oLPH1iFITE7KxYVt7iNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxgsAdYwbhSWac_oLPH1iFITE7KxYVt7iNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxgsAdYwbhSWac_oLPH1iFITE7KxYVt7iNg&usqp=CAU",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIxgsAdYwbhSWac_oLPH1iFITE7KxYVt7iNg&usqp=CAU",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Dynamic ListView",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade400,
      ),
      body: ListView.builder(
        itemCount: imagesList.length,
        itemBuilder: (context, index) {
          return Container(
            height: 200,
            width: 300,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10.0),
            child: Image.network(
              imagesList[index],
            ),
          );
        },
      ),
    );
  }
}
