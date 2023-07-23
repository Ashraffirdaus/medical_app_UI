import 'package:flutter/material.dart';
import 'package:medical_app_ui/const/colour.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.imagePath,
    required this.doctorCategory,
  });

  final String imagePath;
  final String doctorCategory;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 120,
        height: 60,
        decoration:  BoxDecoration(
          color: containerPurple,
          borderRadius: BorderRadius.circular(8.0)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              imagePath,
              width: 30,
              height: 100,
            ),
            Text(doctorCategory)
          ],
        ),
      ),
    );
  }
}
