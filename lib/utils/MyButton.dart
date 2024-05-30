import 'package:fitness/utils/MyText.dart';
import 'package:flutter/material.dart';

class Mybutton extends StatefulWidget {
  void Function()? onPressed;
  final String text;
  Mybutton({super.key, required this.onPressed, required this.text});

  @override
  State<Mybutton> createState() => _MybuttonState();
}

class _MybuttonState extends State<Mybutton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(Colors.black),
      ),
      onPressed: widget.onPressed,
      child: Mytext(
        text: widget.text,
        color: Colors.white,
        size: 20,
      ),
    );
  }
}
