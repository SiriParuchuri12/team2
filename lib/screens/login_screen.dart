import 'package:flutter/material.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[50],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Card(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/logo.png', height: 100), // Added logo
                  SizedBox(height: 20),
                  Text("Welcome Back!",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Username",
                        prefixIcon:
                            Icon(Icons.person, color: Colors.blueAccent)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Email",
                        prefixIcon:
                            Icon(Icons.email, color: Colors.blueAccent)),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        labelText: "Password",
                        prefixIcon: Icon(Icons.lock, color: Colors.blueAccent)),
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text("Login", style: TextStyle(color: Colors.white)),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text("Forgot Password",
                        style: TextStyle(color: Colors.blueAccent)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: Icon(Icons.g_mobiledata, color: Colors.red),
                          onPressed: () {}),
                      IconButton(
                          icon: Icon(Icons.facebook, color: Colors.blue),
                          onPressed: () {}),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
