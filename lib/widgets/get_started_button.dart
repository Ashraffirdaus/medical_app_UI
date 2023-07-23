// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:medical_app_ui/const/colour.dart';

class GetStarted extends StatelessWidget {
  GetStarted({super.key, required this.onTap, required this.newPadding});
  void Function()? onTap;
  final EdgeInsetsGeometry newPadding;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: newPadding,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: const Text(
          "Get Started",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
