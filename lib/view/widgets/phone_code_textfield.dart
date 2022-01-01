import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/theme/constance.dart';

class CustomCodeTextField extends StatelessWidget {
  const CustomCodeTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        textAlign: TextAlign.center,
        cursorColor: primaryColor,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
        ],
        keyboardType: TextInputType.number,
        style: const TextStyle(
          color: primaryColor,
          fontSize: 22,
          fontWeight: FontWeight.w600,
        ),
        decoration: InputDecoration(
          hintText: '5',
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(15)),
            borderSide: BorderSide(
              color: primaryColor,
              width: 2.0,
            ),
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }
}
