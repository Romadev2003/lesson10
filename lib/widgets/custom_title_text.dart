// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  String text;
   TitleText(this.text,{Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.white,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
