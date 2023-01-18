// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import 'package:ebudget_app/services/size_config.dart';
import 'package:ebudget_app/routes/routes.dart' as ROUTE;
// Pages
import 'package:ebudget_app/pages/HomePage/home_page.dart';
import 'package:ebudget_app/pages/LoginPage/login_page.dart';
import 'package:ebudget_app/pages/RegisterPage/register_form_1.dart';
import 'package:ebudget_app/pages/RegisterPage/register_form_2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(builder: (context, orientation) {
        SizeConfig().init(constraints, orientation);
        return MaterialApp(
          title: 'eBudget',
          theme: ThemeData(
            backgroundColor: Colors.white,
            brightness: Brightness.light,
            fontFamily: 'Poppins',
          ),
          debugShowCheckedModeBanner: false,
          locale: const Locale('en', 'US'), // Current locale
          supportedLocales: const [
            Locale('en', 'US'), // English
          ],
          routes: <String, WidgetBuilder>{
            ROUTE.LOGIN: (context) => const LoginPage(),
            ROUTE.HOMEPAGE: (context) => const HomePage(),
            ROUTE.REGISTER_FORM_ONE: (context) => const RegisterFormOne(),
            ROUTE.REGISTER_FORM_TWO: (context) => const RegisterFormTwo(),
          },
        );
      });
    });
  }
}
