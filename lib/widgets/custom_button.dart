import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String ButtonText;
  final void Function()? onPressed;
  final double Width;
  final double Height;
  final Color buttonColor;
  final BorderRadius borderRadius;
  final Color textColor;

  const CustomButton({
    super.key,
    required this.ButtonText,
    this.onPressed,
    required this.Width,
    required this.Height,
    required this.buttonColor,
    required this.borderRadius,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: Width,
        height: Height,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            ButtonText,
            style: TextStyle(color: textColor),
          ),
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(buttonColor),
              shape: MaterialStateProperty.all<OutlinedBorder>(
                  RoundedRectangleBorder(borderRadius: borderRadius))),
        ));
  }
}
