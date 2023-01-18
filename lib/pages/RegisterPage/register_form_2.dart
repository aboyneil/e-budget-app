// ignore_for_file: use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ebudget_app/routes/routes.dart' as ROUTE;

// Components
import 'package:ebudget_app/components/atoms/text_field.dart';
import 'package:ebudget_app/components/atoms/button.dart';
import 'package:ebudget_app/components/atoms/toast.dart';

class RegisterFormTwo extends StatefulWidget {
  const RegisterFormTwo({super.key});

  @override
  State<RegisterFormTwo> createState() => _RegisterFormTwoState();
}

bool isRegister = false;
final _formKey = GlobalKey<FormState>();
const pastelGreen = "#9CC599";
const dirtyWhite = "#F9F8F8";

bool isPassObsecure = true;
bool isConfirmPassObsecure = true;

class _RegisterFormTwoState extends State<RegisterFormTwo> {
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
                    // UserName
                    const SizedBox(height: 20),
                    const Text('Username'),
                    const SizedBox(height: 10),
                    InputField(
                      onChanged: (value) {},
                      placeHolder: 'Enter username',
                      borderColor: pastelGreen,
                    ),
                    const SizedBox(height: 30),
                    // Password Field
                    const Text('Password'),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: isPassObsecure,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            isPassObsecure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: HexColor(pastelGreen),
                          ),
                          onPressed: () {
                            setState(() {
                              isPassObsecure = !isPassObsecure;
                            });
                          },
                        ),
                        hintText: 'Enter password',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 3,
                            color: HexColor(pastelGreen),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                    // Confirm Password
                    const Text('Confirm Password'),
                    const SizedBox(height: 10),
                    TextFormField(
                      obscureText: isConfirmPassObsecure,
                      decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            isConfirmPassObsecure
                                ? Icons.visibility
                                : Icons.visibility_off,
                            color: HexColor(pastelGreen),
                          ),
                          onPressed: () {
                            setState(() {
                              isConfirmPassObsecure = !isConfirmPassObsecure;
                            });
                          },
                        ),
                        hintText: 'Confirm password',
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 18),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide(
                            width: 3,
                            color: HexColor(pastelGreen),
                          ),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: const BorderSide(
                            width: 3,
                            color: Colors.green,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 40),
                    Button(
                      childWidget: isRegister
                          ? const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            )
                          : const Text(
                              'Register',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                      buttonColor: pastelGreen,
                      onPressed: () async {
                        if (isRegister == false) {
                          setState(() {
                            isRegister = !isRegister;
                          });
                          await Future.delayed(const Duration(seconds: 1));
                          showToast('Account Registered!', pastelGreen);
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              ROUTE.HOMEPAGE, (Route<dynamic> route) => false);
                          setState(() {
                            isRegister = !isRegister;
                          });
                        }
                      },
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
