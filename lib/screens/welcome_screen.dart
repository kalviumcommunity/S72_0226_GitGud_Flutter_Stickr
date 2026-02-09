import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  bool clicked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            Icon(
              Icons.flutter_dash,
              size: 100,
              color: clicked ? Colors.green : Colors.blue,
            ),

            const SizedBox(height: 20),

            Text(
              clicked ? "Button Clicked!" : "Welcome to Flutter",
              style: const TextStyle(fontSize: 22),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                setState(() {
                  clicked = !clicked;
                });
              },
              child: const Text("Click Me"),
            ),
          ],
        ),
      ),
    );
  }
}
