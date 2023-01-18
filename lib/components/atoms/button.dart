import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.childWidget,
    required this.buttonColor,
    required this.onPressed,
  });

  final Widget childWidget;
  final VoidCallback onPressed;
  final String buttonColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 45,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: OutlinedButton(
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Colors.transparent,
            ),
            backgroundColor: HexColor(buttonColor),
          ),
          onPressed: onPressed,
          child: childWidget),
    );
  }
}
