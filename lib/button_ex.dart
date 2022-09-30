import 'dart:developer';
import 'dart:math';

import 'package:flutter/material.dart';

class ButtonStatelessWidget extends StatelessWidget {
  ButtonStatelessWidget({Key? key}) : super(key: key);
  final List colors = [
  const Color(0XFF1ABC9C),
    Colors.red,
    Colors.blue,
    Colors.black12,
    Colors.indigo
  ];
  final Random _random = Random();
  int _index=0;
//Stateless Tidak Berubah
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () => _index = _random.nextInt(colors.length),
        child: Text("Stateless Widget $_index"),
        style: TextButton.styleFrom(
          backgroundColor:  colors[_index],
        ) ,
    );
  }
}


class ButtonStatefullWidget extends StatefulWidget {
  const ButtonStatefullWidget({Key? key}) : super(key: key);

  @override
  State<ButtonStatefullWidget> createState() => _ButtonStatefullWidgetState();
}

class _ButtonStatefullWidgetState extends State<ButtonStatefullWidget> {
  final List colors = [
    const Color(0XFF1ABC9C),
    Colors.red,
    Colors.blue,
    Colors.black12,
    Colors.indigo
  ];
  final Random _random = Random();
  int _index=0;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      //Pada Statefull Banyak method State2 yang dapat digunakan
      //Seperti setState() -> yang paling banyak digunakan, dan masih banyak lagi lainnya
      //set State seluruh bisa di render dan bisa bagian beberapa saja yang dirender
        onPressed:  () => setState(() {
          _index = _random.nextInt(colors.length);
          print("$_index");
        }),
        child: Text("Stateful Widget $_index", style: TextStyle(color: Colors.white)),
        style: TextButton.styleFrom(
          backgroundColor:  colors[_index],
        ),
    );
  }
}



