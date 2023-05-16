import 'package:flutter/material.dart';
import 'package:mycontactsapp/screens/signup_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  bool _isHidden = true;
  bool isChecked = false;
  final _formKey = GlobalKey<FormState>();
  final TextEditingController email = TextEditingController();
  final TextEditingController password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        //wrap the entire layout with SingleChildScrollView to remove bottom overflow
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(children: [
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  "MyContactsApp",
                  style: TextStyle(
                      color: Color.fromARGB(255, 13, 40, 58),
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      fontFamily: "Mulish"),
                ),
                const SizedBox(height: 45),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                          color: Color.fromARGB(255, 13, 40, 58),
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 15,
                    ),
                    child: Text(
                      "Log into your MyContactsApp Account",
                      style: TextStyle(
                          color: Color.fromARGB(255, 150, 138, 138),
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Email',
                          style: TextStyle(
                            color: Color.fromARGB(255, 13, 40, 58),
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Mulish',
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Poppins',
                                fontSize: 15))
                      ])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: email,
                    decoration: InputDecoration(
                      contentPadding:
                          const EdgeInsets.only(top: 15, bottom: 15, left: 5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: "example@gmail.com",
                      filled: true,
                      fillColor: const Color.fromARGB(255, 246, 245, 245),
                      //enabledBorder: InputBorder.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Email is Required';
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(height: 5),
                Container(
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: RichText(
                      textAlign: TextAlign.left,
                      text: const TextSpan(children: <TextSpan>[
                        TextSpan(
                          text: 'Password',
                          style: TextStyle(
                              color: Color.fromARGB(255, 13, 40, 58),
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Mulish',
                              fontSize: 20),
                        ),
                        TextSpan(
                            text: '*',
                            style: TextStyle(
                                color: Colors.red,
                                fontFamily: 'Poppins',
                                fontSize: 15))
                      ])),
                ),
                Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                  child: TextFormField(
                    obscureText: _isHidden,
                    controller: password,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            _isHidden = !_isHidden;
                          });
                        },
                        icon: Icon(_isHidden
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      contentPadding:
                          const EdgeInsets.only(top: 15, bottom: 15, left: 5),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      hintText: '*******',
                      filled: true,
                      fillColor: const Color.fromARGB(255, 246, 245, 245),
                      //enabledBorder: InputBorder.none),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Password Value is Incorrect';
                      }
                      return null;
                    },
                  ),
                ),
                // const SizedBox(
                //   height: 5,
                // ),
                // Container(
                //   alignment: Alignment.bottomLeft,
                //   padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
                //   child: RichText(
                //       textAlign: TextAlign.left,
                //       text: const TextSpan(children: <TextSpan>[
                //         TextSpan(
                //           text: 'Confirm Password',
                //           style: TextStyle(
                //               color: Color.fromARGB(255, 13, 40, 58),
                //               fontWeight: FontWeight.w600,
                //               fontFamily: 'Mulish',
                //               fontSize: 20),
                //         ),
                //         TextSpan(
                //             text: '*',
                //             style: TextStyle(
                //                 color: Colors.red,
                //                 fontFamily: 'Poppins',
                //                 fontSize: 15))
                //       ])),
                // ),
                // Container(
                //   padding: const EdgeInsets.only(left: 20, right: 20, top: 8),
                //   child: TextFormField(
                //     obscureText: _isHidden,
                //     controller: confirmpassword,
                //     decoration: InputDecoration(
                //       suffixIcon: IconButton(
                //         onPressed: () {
                //           setState(() {
                //             _isHidden = !_isHidden;
                //           });
                //         },
                //         icon: Icon(_isHidden
                //             ? Icons.visibility
                //             : Icons.visibility_off),
                //       ),
                //       contentPadding:
                //           const EdgeInsets.only(top: 15, bottom: 15, left: 5),
                //       border: OutlineInputBorder(
                //         borderRadius: BorderRadius.circular(5),
                //       ),
                //       hintText: '*******',
                //       filled: true,
                //       fillColor: const Color.fromARGB(255, 246, 245, 245),
                //       //enabledBorder: InputBorder.none),
                //     ),
                //     validator: (value) {
                //       if (value == null || value.isEmpty) {
                //         return 'Password Value is Incorrect';
                //       }
                //       return null;
                //     },
                //   ),
                // ),
                const SizedBox(
                  height: 10,
                ),
                const Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 15),
                    child: Text(
                      "Forget password?",
                      style: TextStyle(
                          color: Color.fromARGB(255, 13, 40, 58),
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Mulish"),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 12, 36, 53),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 115, right: 115, top: 15, bottom: 15),
                    child: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                          fontFamily: "Mulish",
                          fontSize: 22),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Center(
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 45),
                        child: Text(
                          "Don't have an Account?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 170, 136, 136),
                              fontFamily: "Mulish",
                              fontSize: 19,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const SignUpScreen()));
                          },
                          child: const Text(
                            "Sign Up",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 21,
                                color: Color.fromARGB(255, 11, 37, 58)),
                          ))
                    ],
                  ),
                ),
                const SizedBox(height: 40),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
