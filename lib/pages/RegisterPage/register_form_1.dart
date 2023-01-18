import 'package:ebudget_app/routes/routes.dart' as ROUTE;
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

// Pages

// Components
import 'package:ebudget_app/components/atoms/text_field.dart';

class RegisterFormOne extends StatefulWidget {
  const RegisterFormOne({super.key});

  @override
  State<RegisterFormOne> createState() => _RegisterFormOneState();
}

final _formKey = GlobalKey<FormState>();
final pastelGreen = "#9CC599";
final dirtyWhite = "#F9F8F8";

class _RegisterFormOneState extends State<RegisterFormOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Center(
          child: Form(
            key: _formKey,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 40),
                    // Given Name
                    const SizedBox(height: 20),
                    const Text('Given Name'),
                    const SizedBox(height: 10),
                    InputField(
                      onChanged: (value) {},
                      placeHolder: 'Enter given name',
                      borderColor: pastelGreen,
                    ),
                    const SizedBox(height: 30),
                    // Middle Name
                    const Text('Middle Name'),
                    const SizedBox(height: 10),
                    InputField(
                      onChanged: (value) {},
                      placeHolder: 'Enter middle name',
                      borderColor: pastelGreen,
                    ),
                    const SizedBox(height: 30),
                    // Last Name
                    const Text('Last Name'),
                    const SizedBox(height: 10),
                    InputField(
                      onChanged: (value) {},
                      placeHolder: 'Enter last name',
                      borderColor: pastelGreen,
                    ),
                    const SizedBox(height: 40),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ROUTE.REGISTER_FORM_TWO);
                        },
                        child: Text(
                          'NEXT >',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: HexColor(pastelGreen),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
