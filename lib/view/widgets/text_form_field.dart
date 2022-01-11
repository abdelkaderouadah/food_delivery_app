import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';

class CustomTextFormField extends StatelessWidget {
  final String text, hint;
  final TextStyle style, inputStyle;
  final TextInputType keybordType;
  final bool obscureText;
  final Color fillColor;
  final TextEditingController controller;
  const CustomTextFormField({
    Key? key,
    required this.text,
    required this.hint,
    required this.style,
    required this.keybordType,
    this.obscureText = false,
    this.fillColor = Colors.white,
    required this.inputStyle,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: style,
        ),
        addVerticalSpace(10),
        TextField(
          controller: controller,
          obscureText: obscureText,
          keyboardType: keybordType,
          style: inputStyle,
          decoration: InputDecoration(
            hintText: hint,
            hintStyle: style,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
            fillColor: fillColor,
            filled: true,
            border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide.none,
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
              borderSide: BorderSide(
                color: primaryColor,
                width: 1.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
