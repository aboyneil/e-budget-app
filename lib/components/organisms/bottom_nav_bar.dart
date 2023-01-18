import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
    required this.onHomePressed,
    required this.onWalletPressed,
    required this.onSettingsPressed,
    required this.onProfilePressed,
  });

  final pastelGreen = "#9CC599";
  final dirtyWhite = "#F9F8F8";

  final VoidCallback onHomePressed;
  final VoidCallback onWalletPressed;
  final VoidCallback onSettingsPressed;
  final VoidCallback onProfilePressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: HexColor(dirtyWhite),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.50),
            blurRadius: 3,
            offset: const Offset(0, -3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          OutlinedButton(
            onPressed: onHomePressed,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(12),
              side: const BorderSide(color: Colors.transparent),
            ),
            child: Icon(
              Icons.home,
              color: HexColor(pastelGreen),
            ),
          ),
          OutlinedButton(
            onPressed: onWalletPressed,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(12),
              side: const BorderSide(color: Colors.transparent),
            ),
            child: Icon(
              Icons.wallet,
              color: HexColor(pastelGreen),
            ),
          ),
          OutlinedButton(
            onPressed: onSettingsPressed,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(12),
              side: const BorderSide(color: Colors.transparent),
            ),
            child: Icon(
              Icons.settings,
              color: HexColor(pastelGreen),
            ),
          ),
          OutlinedButton(
            onPressed: onProfilePressed,
            style: OutlinedButton.styleFrom(
              padding: const EdgeInsets.all(12),
              side: const BorderSide(color: Colors.transparent),
            ),
            child: Icon(
              Icons.person,
              color: HexColor(pastelGreen),
            ),
          ),
        ],
      ),
    );
  }
}
