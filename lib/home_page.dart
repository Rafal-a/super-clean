import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        selectedItemColor: Color.fromRGBO(31, 170, 205, 1.0),
        iconSize: 28,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_rounded),
          label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Price Plan",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: "History",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}
