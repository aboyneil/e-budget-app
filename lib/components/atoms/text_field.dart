import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class InputField extends StatelessWidget {
  const InputField({
    super.key,
    required this.placeHolder,
    required this.borderColor,
    required this.onChanged,
  });

  final String placeHolder;
  final String borderColor;
  final void Function(String?)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: placeHolder,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 3,
            color: HexColor(borderColor),
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(
            width: 3,
            color: HexColor(borderColor),
          ),
        ),
      ),
    );
    ;
  }
}
