import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BoxContainer extends StatelessWidget {
  const BoxContainer({
    super.key,
    this.childWidget,
    required this.containerColor,
  });
  final pastelGreen = "#9CC599";
  final dirtyWhite = "#F9F8F8";

  final Widget? childWidget;
  final String containerColor;
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 30,
        ),
        width: MediaQuery.of(context).size.width,
        constraints: const BoxConstraints(
          minHeight: 70,
        ),
        decoration: BoxDecoration(
          color: HexColor(containerColor),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.50),
              blurRadius: 3,
              offset: const Offset(0, 10),
            ),
          ],
          borderRadius: BorderRadius.circular(20),
        ),
        child: childWidget);
  }
}
