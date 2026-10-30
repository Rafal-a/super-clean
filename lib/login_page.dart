import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool showPassword = true; // Variable to control password visibility

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 40),
                Image.asset(
                  "images/sign_up_logo.png",
                  width: 80,
                  height: 80,
                  cacheHeight: 180,
                  cacheWidth: 180,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 26),
                    textAlign: TextAlign.start,
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      labelText: "Phone Number",
                      hint: Text(
                        "07x xxx xxxx",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: 300,
                  child: TextField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: showPassword,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      labelText: "Password",
                      suffixIcon: IconButton(
                        onPressed: _passwordVisibility,
                        icon: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    style: ButtonStyle(splashFactory: NoSplash.splashFactory),
                    onPressed: () => {},
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        color: Colors.grey[600],
                      ),
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: () {
                    // Handle sign-up button press
                  },
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all<Color>(
                      const Color.fromARGB(255, 18, 110, 180),
                    ),
                    foregroundColor: WidgetStateProperty.all<Color>(
                      Colors.white,
                    ),
                    fixedSize: WidgetStateProperty.all<Size>(Size(300, 50)),
                  ),
                  child: Text("Log in"),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    TextButton(
                      style: ButtonStyle(splashFactory: NoSplash.splashFactory),
                      onPressed: () => {},
                      child: Text(
                        "SIGN UP",
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.grey[600],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool _passwordVisibility() {
    setState(() {
      showPassword = !showPassword; // Toggle password visibility
    });
    return showPassword;
  }
}
