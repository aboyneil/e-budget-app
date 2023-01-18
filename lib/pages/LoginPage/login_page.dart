// ignore_for_file: use_build_context_synchronously
import 'package:ebudget_app/components/atoms/text_field.dart';
import 'package:ebudget_app/components/atoms/toast.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:ebudget_app/routes/routes.dart' as ROUTE;

// Components
import 'package:ebudget_app/components/atoms/button.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class User {
  String username;
  String password;

  User(this.username, this.password);

  User.fromJson(Map<String, dynamic> json)
      : username = json['username'],
        password = json['password'];

  Map<String, dynamic> toJson() => {
        'name': username,
        'password': password,
      };
}

class _LoginPageState extends State<LoginPage> {
  bool isPassObsecure = false;
  bool isLogin = false;
  User user = User('', '');
  final pastelGreen = "#9CC599";
  final dirtyWhite = "#F9F8F8";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const SizedBox(height: 130),
                    // --------------------------------------- TITLE
                    Center(
                      child: Text(
                        'eBudget',
                        style: TextStyle(
                          color: HexColor(pastelGreen),
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 50),
                    // --------------------------------------- Username field
                    const Text('Username'),
                    const SizedBox(height: 10),
                    InputField(
                        onChanged: (value) {
                          user.username = value!;
                        },
                        placeHolder: 'Enter username',
                        borderColor: pastelGreen),
                    const SizedBox(height: 30),
                    // --------------------------------------- Username field
                    const Text('Password'),
                    const SizedBox(height: 10),
                    TextFormField(
                      onChanged: (value) {
                        user.password = value;
                      },
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
                    const SizedBox(height: 40),
                    // --------------------------------------- Login Button
                    Button(
                      buttonColor: pastelGreen,
                      childWidget: !isLogin
                          ? Text(
                              'LOGIN',
                              style: TextStyle(
                                color: HexColor(dirtyWhite),
                              ),
                            )
                          : const SizedBox(
                              width: 20,
                              height: 20,
                              child: CircularProgressIndicator(
                                color: Colors.white,
                              ),
                            ),
                      onPressed: () async {
                        if (isLogin == false) {
                          setState(() {
                            isLogin = !isLogin;
                          });
                          await Future.delayed(const Duration(seconds: 1));
                          showToast('Login Successful!', pastelGreen);
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              ROUTE.HOMEPAGE, (Route<dynamic> route) => false);
                          setState(() {
                            isLogin = !isLogin;
                          });
                        }
                      },
                    ),
                    const SizedBox(height: 15),
                    // --------------------------------------- Forgot Password Button
                    Center(
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forget password?',
                          style: TextStyle(
                            color: HexColor(pastelGreen),
                          ),
                        ),
                      ),
                    ),
                    // --------------------------------------- Register Button
                    Center(
                      child: TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(ROUTE.REGISTER_FORM_ONE);
                        },
                        child: Text(
                          "Don't have an account?",
                          style: TextStyle(
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
