import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // iconTheme: IconThemeData(color: Colors.white),
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            radius: 100,
            child: Image.asset(
              "assets/images/profile.png",
            ),
          ),
        ), //CircleAvatar
        toolbarHeight: 70,
        backgroundColor: Colors.white,
        title: const Text(
          "Hi,\nHow are you doing today!",
          style: TextStyle(
              color: Color.fromARGB(255, 12, 36, 53),
              fontSize: 17,
              fontWeight: FontWeight.w600),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.notifications,
              size: 35,
            ),
          )
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.asset(
              "assets/images/contact.jpg",
            ),
            const SizedBox(
              height: 30,
            ),
            const Text(
              "No Contacts",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 21,
                  color: Color.fromARGB(255, 11, 37, 58)),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "To start adding your contacts, tap on the Add\n              button below",
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
                  "Add",
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
