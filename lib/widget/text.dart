import 'package:flutter/material.dart';

class UsualText extends StatelessWidget{

  final String text;

  const UsualText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }



}