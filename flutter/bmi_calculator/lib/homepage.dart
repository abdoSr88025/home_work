import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/gender_selection_section.dart';
import 'package:bmi_calculator/widgets/height_selection_item.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff03051A),
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar(),
            SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                spacing: 16,
                children: [GenderSelectionSection(), HeightSelectionItem()],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
