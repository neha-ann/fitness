import 'package:fitness/utils/MyText.dart';
import 'package:flutter/material.dart';

class CardioCard extends StatefulWidget {
  final String text;
  final double number;
  final String image;
  final ValueChanged<double> onNumberChanged;

  const CardioCard({
    super.key,
    required this.text,
    this.number = 20.0,
    required this.image,
    required this.onNumberChanged,
  });

  @override
  _CardioCardState createState() => _CardioCardState();
}

class _CardioCardState extends State<CardioCard> {
  late double _number;

  @override
  void initState() {
    super.initState();
    _number = widget.number;
  }

  void _incrementNumber() {
    setState(() {
      _number += 5;
      widget.onNumberChanged(_number);
    });
  }

  void _decrementNumber() {
    setState(() {
      _number -= 5;
      widget.onNumberChanged(_number);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image.asset(widget.image, height: 80, width: 80),
              Mytext(
                text: widget.text,
                size: 20,
                color: Colors.black,
              ),
              const Spacer(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: const Icon(Icons.remove),
                onPressed: _decrementNumber,
              ),
              Mytext(
                text: _number.toString(),
                size: 20,
                color: Colors.black,
              ),
              IconButton(
                icon: const Icon(Icons.add),
                onPressed: _incrementNumber,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
