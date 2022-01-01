import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';

class SquareIconButton extends StatelessWidget {
  final Function() onPressed;
  final Color buttonColor, borderColor;
  final double width;
  final Widget child;
  final double borderRadius;

  const SquareIconButton({
    Key? key,
    required this.onPressed,
    this.buttonColor = primaryColor,
    this.width = 30,
    required this.child,
    this.borderRadius = 15,
    this.borderColor = primaryColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: width,
        child: child,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(borderRadius),
          border: Border.all(
            color: borderColor,
            width: 1.5,
          ),
        ),
      ),
    );
  }
}
