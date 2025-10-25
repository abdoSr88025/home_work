import 'package:bmi_calculator/widgets/custom_container.dart';
import 'package:bmi_calculator/widgets/title_section.dart';
import 'package:bmi_calculator/widgets/value_text.dart';
import 'package:flutter/material.dart';

class CounterCard extends StatefulWidget {
  const CounterCard({
    super.key,
    required this.text,
    required this.defaultValue,
    required this.onChanged,
  });
  final String text;
  final int defaultValue;
  final Function(int) onChanged;
  @override
  State<CounterCard> createState() => _CounterCardState();
}

class _CounterCardState extends State<CounterCard> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    if (value == 0) {
      value = widget.defaultValue;
    }
    return CustomContainer(
      child: Column(
        children: [
          TitleSection(label: widget.text),
          ValueText(text: value.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomIconButton(
                icon: Icons.remove,
                onTap: () {
                  value--;
                  widget.onChanged(value);
                  setState(() {});
                },
              ),
              SizedBox(width: 8),
              CustomIconButton(
                icon: Icons.add,
                onTap: () {
                  value++;
                  widget.onChanged(value);
                  setState(() {});
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({super.key, required this.icon, required this.onTap});
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        backgroundColor: Color(0xff4B4E5F),
        radius: 25,
        child: Icon(icon, color: Colors.white, size: 30),
      ),
    );
  }
}
