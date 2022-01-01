import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Function() onPress;
  final double height, width;
  final Color backgroundColor, borderColor;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onPress,
    this.backgroundColor = primaryColor,
    this.borderColor = primaryColor,
    this.height = 60,
    this.width = 140,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: () => onPress,
        child: Text(
          text,
          style: style,
        ),
        style: TextButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            side: BorderSide(color: borderColor),
            borderRadius: const BorderRadius.all(
              Radius.circular(50),
            ),
          ),
        ),
      ),
    );
  }
}
