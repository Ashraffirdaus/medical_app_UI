import 'package:flutter/material.dart';
import 'package:medical_app_ui/const/colour.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer(
      {super.key,
      required this.hintText,
      required this.eachIcon,
      required this.newPadding,
      required this.eachBorder,
      required this.borderRadius
      });
  final String hintText;
  final Icon eachIcon;
  final EdgeInsetsGeometry newPadding;
  final InputBorder eachBorder;
  final BorderRadiusGeometry borderRadius;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: newPadding,
      decoration:  BoxDecoration(
        color: containerPurple,
        borderRadius: borderRadius,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          icon: eachIcon,
          border: eachBorder,
        ),
      ),
    );
  }
}
