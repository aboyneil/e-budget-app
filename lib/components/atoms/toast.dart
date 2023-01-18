import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

showToast(String message, String bgColor) {
  Fluttertoast.cancel();
  return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.SNACKBAR,
      timeInSecForIosWeb: 1,
      backgroundColor: HexColor(bgColor),
      textColor: Colors.white,
      fontSize: 16.0);
}
