import 'package:flutter/material.dart';

class Portfolio extends StatefulWidget {
  const Portfolio({super.key});

  @override
  State<Portfolio> createState() => _PortfolioState();
}

class _PortfolioState extends State<Portfolio> {
  int count = -1;
  void counter() {
    if (count == 7) {
      count = -1;
    }
    setState(() {
      count++;
    });
  }

  Widget one() {
    return const Text(
      "Name : Aditya Ashok Shinde",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }

  Widget two() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.amber,
        ),
      ),
      child: Image.network(
        "https://avatars.githubusercontent.com/u/94387380?v=4",
        height: 200,
        width: 200,
      ),
    );
  }

  Widget three() {
    return const Text(
      "College Name : Smt. Kashibai Navle College of Engineering Vadgoan Bk, Pune",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }

  Widget four() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.amber,
        ),
      ),
      child: Image.network(
        "",
        height: 200,
        width: 200,
      ),
    );
  }

  Widget five() {
    return const Text(
      "Dream Company : Adobe",
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 22,
        color: Colors.black,
      ),
    );
  }

  Widget six() {
    return Container(
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
          color: Colors.amber,
        ),
      ),
      child: Image.network(
        "",
        height: 200,
        width: 200,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Portfolio App",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber.shade100,
        padding: const EdgeInsets.only(top: 40, left: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            (count >= 0) ? one() : const Text(""),
            const SizedBox(
              height: 10,
            ),
            (count >= 1) ? two() : Container(),
            const SizedBox(
              height: 10,
            ),
            (count >= 2) ? three() : const Text(""),
            const SizedBox(
              height: 10,
            ),
            (count >= 3) ? four() : Container(),
            const SizedBox(
              height: 10,
            ),
            (count >= 4) ? five() : const Text(""),
            const SizedBox(
              height: 10,
            ),
            (count >= 5) ? six() : Container(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          hoverColor: Colors.amberAccent,
          onPressed: counter,
          child: const Icon(
            Icons.arrow_right,
          )),
    );
  }
}
