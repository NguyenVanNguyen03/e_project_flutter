import 'package:fashion_ecommerce_app/main_wrapper.dart';
import 'package:fashion_ecommerce_app/screens/auth_firebase/firebase_auth_services.dart';
import 'package:fashion_ecommerce_app/screens/login/constants.dart';
import 'package:fashion_ecommerce_app/screens/login/sign_in_creen.dart';
import 'package:fashion_ecommerce_app/screens/login/toast.dart';
import 'package:fashion_ecommerce_app/screens/onbording/onbording.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../utils/constants.dart';
import './sign_up_screen.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreen createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  bool _isChecked = true;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController userController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuthService _auth = FirebaseAuthService();

  bool isSigningUp = false;

  @override
  void dispose() {
    userController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(0, 50, 0, 0),
            width: 800,
            height: 900,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(80),
                    topRight: Radius.circular(80))),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: TextButton.icon(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => SignInScreen(),
                          ),
                        );
                      },
                      icon: Icon(
                        Icons.arrow_back_ios_new,
                      ),
                      label: Text(''),
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  Padding(
                      padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                      child: Text(
                        "Create an account to admire the beautiful clothes",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: primaryColor),
                      )),
                  Padding(
                    padding: EdgeInsets.only(left: 30, right: 30, top: 30),
                    child: Form(
                        key: _formKey,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User Name",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              controller: userController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Vui lòng nhập User Name!");
                                }

                                return null;
                              },
                              onSaved: (value) {
                                userController.text = value!;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Email",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              controller: emailController,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return ("Vui lòng nhập email!");
                                }
                                if (!RegExp(
                                        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                    .hasMatch(value)) {
                                  return ("Vui lòng nhập Email hợp lệ!");
                                }
                                return null;
                              },
                              onSaved: (value) {
                                emailController.text = value!;
                              },
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "Password",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                            ),
                            TextFormField(
                              controller: passwordController,
                              validator: (value) {
                                RegExp regex = RegExp(r'^.{6,}$');
                                if (value!.isEmpty) {
                                  return ("Vui lòng nhập mật khẩu!");
                                }
                                if (!regex.hasMatch(value)) {
                                  return ("Mật khẩu phải ít nhất 6 kí tự!");
                                }
                              },
                              onSaved: (value) {
                                passwordController.text = value!;
                              },
                              obscureText: true,
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            ElevatedButton(
                                onPressed: () {
                                  if (_formKey.currentState!.validate()) {
                                    _signUp();
                                  }
                                },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: primaryColor),
                                child: SizedBox(
                                  width: 450,
                                  height: 50,
                                  child: Center(
                                      child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  )),
                                )),
                            SizedBox(
                              height: 30,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Do you have an account?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.pushReplacement(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => SignInScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    "Login",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: primaryColor),
                                  ),
                                )
                              ],
                            )
                          ],
                        )),
                  ),
                ]),
          ),
        ),
      ),
    );
  }

  void _signUp() async {
    setState(() {
      isSigningUp = true;
    });

    String username = userController.text;
    String email = emailController.text;
    String password = passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    setState(() {
      isSigningUp = false;
    });
    if (user != null) {
      showToast(message: "User is successfully created");
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => MainWrapper(),
        ),
      );
    } else {
      showToast(message: "Some error happend");
    }
  }
}
