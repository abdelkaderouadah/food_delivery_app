import 'package:flutter/material.dart';
import 'package:food_delivery_app/theme/constance.dart';

class CustomIconButton extends StatelessWidget {
  final String text;
  final TextStyle style;
  final Widget icon;
  final Function() onPress;
  final double height, width;
  final Color backgroundColor, borderColor;

  const CustomIconButton({
    Key? key,
    required this.text,
    required this.onPress,
    required this.icon,
    this.backgroundColor = primaryColor,
    this.borderColor = primaryColor,
    this.height = 60,
    this.width = 150,
    required this.style,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: TextButton(
        onPressed: onPress,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            icon,
            addHorizontalSpace(10),
            Text(
              text,
              style: style,
            )
          ],
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
