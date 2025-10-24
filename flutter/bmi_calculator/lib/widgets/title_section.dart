import 'package:flutter/material.dart';

class TitleSection extends StatelessWidget {
  const TitleSection({super.key, required this.label});

  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label, style: TextStyle(color: Colors.grey, fontSize: 20));
  }
}
