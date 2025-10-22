import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/icon_content.dart';
import 'package:flutter/material.dart';

int height = 180;

class MainPage extends StatefulWidget {
  const MainPage({super.key});
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 50,
            margin: EdgeInsets.all(15),
            decoration: BoxDecoration(
              color: Color(0xff1D1E33),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'BMI CALCULATOR',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {},
                    child: MultiUsedCard(
                      cardChild: IconContent(icon: Icons.male, label: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: MultiUsedCard(
                    cardChild: IconContent(icon: Icons.female, label: 'FEMALE'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: MultiUsedCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT', style: kLabelTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text('$height', style: kNumberTextStyle),
                      Text('cm', style: kLabelTextStyle),
                    ],
                  ),
                  Slider(
                    value: height.toDouble(),
                    min: 150.0,
                    max: 230.0,
                    activeColor: Colors.white,
                    inactiveColor: Color(0xff8D8E98),
                    thumbColor: Color(0xffEB1555),
                    onChanged: (double newValue) {
                      setState(() {
                        height = newValue.round();
                      });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: MultiUsedCard(
                    cardChild: Column(
                      children: [
                        Text('WEIGHT', style: kLabelTextStyle),
                        Text('60', style: kNumberTextStyle),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: MultiUsedCard(
                    cardChild: Column(
                      children: [
                        Text('AGE', style: kLabelTextStyle),
                        Text('29', style: kNumberTextStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Color(0xffEB1555),
            margin: EdgeInsets.only(top: 10),
            width: double.infinity,
            height: 70,
            child: Center(
              child: Text(
                'CALCULATE',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}

class MultiUsedCard extends StatelessWidget {
  const MultiUsedCard({super.key, this.cardChild});
  final Widget? cardChild;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Color(0xff1D1E33),
        borderRadius: BorderRadius.circular(10),
      ),
      child: cardChild,
    );
  }
}
