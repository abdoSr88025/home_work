import 'package:bmi_calculator/widgets/custom_container.dart';
import 'package:bmi_calculator/widgets/title_section.dart';
import 'package:flutter/material.dart';

class GenderItem extends StatelessWidget {
  const GenderItem({
    super.key,
    required this.icon,
    required this.data,
    required this.color,
  });
  final IconData icon;
  final String data;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      color: color,
      child: Column(
        children: [
          Icon(icon, color: Colors.white, size: 120),
          TitleSection(label: data),
        ],
      ),
    );
  }
}
