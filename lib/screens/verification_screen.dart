import 'package:flutter/material.dart';
import 'package:mycontactsapp/screens/home_screen.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 170,
            ),
            Image.asset(
              "assets/images/verify.jpg",
              scale: 1.5,
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Verification Email Sent!",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Color.fromARGB(255, 11, 37, 58)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Please Check your Email to verify your\n              mycontactsapp account",
              style: TextStyle(
                  color: Color.fromARGB(255, 170, 136, 136),
                  fontFamily: "Mulish",
                  fontSize: 19,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 12, 36, 53),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomeScreen(),
                  ),
                );
              },
              child: const Padding(
                padding:
                    EdgeInsets.only(left: 100, right: 100, top: 15, bottom: 15),
                child: Text(
                  "Done",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                      fontFamily: "Mulish",
                      fontSize: 22),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
