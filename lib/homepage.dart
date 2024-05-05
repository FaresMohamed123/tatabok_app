
import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int leftImageNumber = 1;
  int rightImageNumber = 2;
  void changeImage() {
    setState(() {
      leftImageNumber = Random().nextInt(8) + 1;
      rightImageNumber = Random().nextInt(8) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          leftImageNumber == rightImageNumber
              ? 'مبروووووك لقد نجحت'
              : 'حاول مره اخرى',
          style: const TextStyle(
              fontWeight: FontWeight.bold, fontSize: 40, color: Colors.white),
        ),
        Row(
          children: [
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('images/image-$leftImageNumber.png'),
              ),
            ),
            Expanded(
              child: MaterialButton(
                onPressed: () {
                  changeImage();
                },
                child: Image.asset('images/image-$rightImageNumber.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
