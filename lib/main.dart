import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ball Project Project',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String ballImage = "assets/ball1.png";
  int count = 0;

  void shuffleBall() {
    int randomNumber = Random().nextInt(5) + 1;
    setState(() {
      ballImage = "assets/ball$randomNumber.png";
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 7, 143, 255),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 21, 61, 135),
        title:const Text ("Ball Shuffling App",
          style: TextStyle(fontSize: 27),
        ),
        toolbarHeight: 80,
      ),
      body:
       Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        const Text("Ask Me Anything...",
        style: TextStyle(fontSize: 35,
        color: Colors.white)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ballImage, height: 250, width: 250),
          ],
        ),
        ElevatedButton(
         onPressed: count >= 10 ? null : shuffleBall,
          style: ElevatedButton.styleFrom(
            minimumSize: const Size(100, 60),
            backgroundColor:const Color.fromARGB(255, 21, 61, 135),
          ),
          child: const Text(
            "Ask",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
        )
      ]),
    );
  }
}

