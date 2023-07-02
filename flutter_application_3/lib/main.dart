import 'package:flutter/material.dart';
import 'dart:math';
import './winner.dart';

class Winner {
  final String name;
  const Winner(this.name);
}

void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

const kTextStyle = TextStyle(
  fontSize: 24,
  color: Colors.purple,
  fontWeight: FontWeight.bold,
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Dice Game"),
          backgroundColor: const Color.fromARGB(255, 178, 137, 4),
          centerTitle: true,
        ),
        body: DicePage(),
      ),
    );
  }
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int imageNo = 2;
  int imageNo2 = 3;
  String message = "";
  void changeImage() {
    setState(() {
      setState(() {
        imageNo = Random().nextInt(6) + 1;
        imageNo2 = Random().nextInt(6) + 1;
        if (imageNo > imageNo2) {
          message = "Player 1";
        } else if (imageNo2 > imageNo) {
          message = "Player 2";
        } else {
          message = "Barazim";
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          width: double.infinity,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text("Player 1 ", style: kTextStyle),
                Image.asset("images/dice-$imageNo.png", width: 150),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Player 2",
                  style: kTextStyle,
                ),
                Image.asset("images/dice-$imageNo2.png", width: 150),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              fixedSize: const Size(125, 45), backgroundColor: Colors.purple),
          onPressed: () {
            setState(() {
              changeImage();
            });
            Navigator.of(context).push(
              MaterialPageRoute(builder: (ctx) {
                return WinnerPage(message);
              }),
            );
          },
          child: const Text("Play"),
        ),
        const SizedBox(
          height: 25,
        ),
      ],
    ));
  }
}
