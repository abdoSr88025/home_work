import 'package:bmi_calculator/widgets/custom_container.dart';
import 'package:bmi_calculator/widgets/title_section.dart';
import 'package:bmi_calculator/widgets/value_text.dart';
import 'package:flutter/material.dart';

class HeightSelectionItem extends StatefulWidget {
  const HeightSelectionItem({super.key});

  @override
  State<HeightSelectionItem> createState() => _HeightSelectionItemState();
}

class _HeightSelectionItemState extends State<HeightSelectionItem> {
  double height = 174;
  @override
  Widget build(BuildContext context) {
    return CustomContainer(
      child: Column(
        children: [
          TitleSection(label: 'HEIGHT'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ValueText(text: height.round().toString()),
              Text('cm', style: TextStyle(color: Colors.grey, fontSize: 18)),
            ],
          ),
          SliderTheme(
            data: SliderThemeData(
              trackHeight: .7,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
            ),
            child: Slider(
              value: height,
              onChanged: (value) {
                height = value;
                setState(() {});
              },
              min: 100,
              max: 200,
              activeColor: Colors.white,
              inactiveColor: Color(0xff8F919E),
              thumbColor: Color(0xffEC0D54),
            ),
          ),
        ],
      ),
    );
  }
}
