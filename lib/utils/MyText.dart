import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Mytext extends StatefulWidget {
  final String text;
  final double size;
  final Color color;
  const Mytext(
      {super.key, required this.text, required this.size, required this.color});

  @override
  State<Mytext> createState() => _MytextState();
}

class _MytextState extends State<Mytext> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: GoogleFonts.kanit(fontSize: widget.size, color: widget.color),
    );
  }
}
