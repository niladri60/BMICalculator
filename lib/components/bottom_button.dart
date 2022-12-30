import 'package:flutter/material.dart';
import '../constants.dart';
class BottomButton extends StatelessWidget {
  const BottomButton(
      {super.key, required this.onPressed, required this.buttonTitle});

  final VoidCallback onPressed;
  final String buttonTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: kLargeButtonStyle,
        // color: kbottomContainerColor,
        margin: const EdgeInsets.all(10.0),
        width: double.infinity,
        height: 80.0,
        child: Center(
          child: Text(
            buttonTitle,
            style: const TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }
}