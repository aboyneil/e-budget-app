import 'package:ebudget_app/components/atoms/toast.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ebudget_app/routes/routes.dart' as ROUTE;

// Components
import 'package:ebudget_app/components/atoms/box_container.dart';
import 'package:ebudget_app/components/organisms/bottom_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final value = NumberFormat("#,##0.00", "en_US");
  final userName = 'Aboy';
  bool message = true;
  final pastelGreen = "#9CC599";
  final dirtyWhite = "#F9F8F8";
  final grey = "#808080";
  double totalAmount = 10000;
  final testData =
      'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 30),
                // --------------------------------------- TITLE
                Text(
                  'Hi $userName!',
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 35),
                // --------------------------------------- TOTAL MONEY CONTAINER
                BoxContainer(
                  containerColor: pastelGreen,
                  childWidget: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      const Text(
                        'Total Money:',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            // Total Balance Value
                            'P  ${value.format(totalAmount)}',
                            style: const TextStyle(
                              fontSize: 27,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                    ],
                  ),
                ),
                const SizedBox(height: 30),
                // --------------------------------------- GOAL CONTAINER
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Text(
                      'Goals',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(width: MediaQuery.of(context).size.width - 200),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.more_horiz),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                BoxContainer(
                  containerColor: dirtyWhite,
                  childWidget: Text(
                    testData,
                    style: const TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
      // --------------------------------------- BOTTOM NAV BAR
      bottomNavigationBar: BottomNavBar(
        onHomePressed: () {
          showToast('Already in home', pastelGreen);
        },
        onWalletPressed: () {
          showToast('Coming Soon', grey);
        },
        onSettingsPressed: () {
          showToast('Coming Soon', grey);
        },
        onProfilePressed: () {
          Navigator.of(context).pushNamedAndRemoveUntil(
              ROUTE.LOGIN, (Route<dynamic> route) => false);
        },
      ),
    );
  }
}
