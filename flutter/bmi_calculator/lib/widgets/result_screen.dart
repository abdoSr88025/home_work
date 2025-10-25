import 'package:bmi_calculator/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key, required this.bmiResult});
  final double bmiResult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff04061D),
      appBar: AppBar(
        backgroundColor: Color(0xff04061D),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back, color: Colors.white),
        ),
      ),
      body: CustomContainer(
        child: Column(
          children: [
            Text(
              'Result',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              '${bmiResult.toStringAsFixed(1)}',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
