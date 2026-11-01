import 'package:flutter/material.dart';
import 'package:super_clean/home_page.dart';
import 'package:super_clean/login_page.dart';
import 'package:super_clean/other_services_card.dart';
import 'package:super_clean/sign_up.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home:  HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.black87),
          onPressed: () {
            // Handle menu button press
          },
        ),
        title: Text(widget.title),
      ),
      backgroundColor: Color.fromRGBO(244, 232, 243, 1),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              padding: EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Find your",
                    style: TextStyle(color: Colors.black87, fontSize: 30),
                  ),
                  SizedBox(height: 3),
                  Text(
                    'Inspiration',
                    style: TextStyle(fontSize: 40, color: Colors.black),
                  ),
                  SizedBox(height: 10),
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(244, 243, 243, 1),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search, color: Colors.black87),
                        hintText: "Search what you want",
                        hintStyle: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Promo Today",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 200,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        promoCard(''),
                      ]
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


  Widget promoCard(image){
    return AspectRatio(
      aspectRatio:2/3,
      child:Container(
        decoration:BoxDecoration(
          color:Colors.orange,
          borderRadius:BorderRadius.circular(15),
          image:DecorationImage(
            image:AssetImage('images/loogo.png'),
            fit:BoxFit.cover
          ),
          gradient:LinearGradient(
            begin:Alignment.bottomRight,
            colors:[
              Colors.black.withValues(alpha:0.8),
              Colors.black.withValues(alpha:0.1)
            ]
          ) 
        )
      )

    );
  }
}

