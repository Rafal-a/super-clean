import 'package:flutter/material.dart';
import 'package:super_clean/carousel_images.dart';
import 'package:super_clean/other_services_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 40),
              Stack(
                children: [
                  TextField(
                    enabled: false,
                    controller: TextEditingController(text: "Iraq , Baghdad"),
                    decoration: InputDecoration(
                      disabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                        borderSide: BorderSide(
                          color: Color.fromRGBO(30, 30, 30, 1.0),
                          width: 1,
                        ),
                      ),
                      suffixIcon: IconButton(
                        color: Colors.black,
                        onPressed: () {
                          //TODO: LATER ON
                        },
                        icon: Icon(Icons.edit_location_alt_outlined),
                        iconSize: 32,
                      ),
                    ),
                  ),
                ],
              ),
              CarouselImages(),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  'Other services',
                  style: TextStyle(fontSize: 16),
                  textAlign: TextAlign.start,
                ),
              ),
              OtherServicesCard(title: 'غسيل سيارات متنقل'),
              OtherServicesCard(title: 'غسيل تانكيات'),
              OtherServicesCard(title: 'تنظيف الواح شمسية'),
              //OtherServicesCard(title: 'غسيل فرشات'),
              //OtherServicesCard(title: 'تنظيف قنفات موقعي'),


            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        selectedItemColor: Color.fromRGBO(31, 170, 205, 1.0),
        iconSize: 28,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label: "Price Plan",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.history), label: "History"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
