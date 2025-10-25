import 'package:bmi_calculator/models/bmi_inputs_model.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/gender_selection_section.dart';
import 'package:bmi_calculator/widgets/height_selection_item.dart';
import 'package:bmi_calculator/widgets/result_screen.dart';
import 'package:bmi_calculator/widgets/weight_age_section.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  BmiInputsModel bmiInputsModel = BmiInputsModel();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051A),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 16),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  spacing: 20,
                  children: [
                    Expanded(
                      child: GenderSelectionSection(
                        bmiInputsModel: bmiInputsModel,
                      ),
                    ),
                    Expanded(
                      child: HeightSelectionItem(
                        bmiInputsModel: bmiInputsModel,
                      ),
                    ),
                    Expanded(
                      child: WeightAgeSection(bmiInputsModel: bmiInputsModel),
                    ),
                    SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          double bmiResult = bmiInputsModel.calculateBmi();
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return ResultScreen(bmiResult: bmiResult);
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xffF72595),
                          padding: EdgeInsets.symmetric(
                            horizontal: 60,
                            vertical: 20,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          elevation: 4,
                        ),
                        child: Text(
                          'CALCULATE',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
