import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Greeting App'),
        ),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          // Original Text Widget
          const Text(
            'Hello, World!',
            style: TextStyle(
              color: Colors.red, // Change text color to red
              fontWeight: FontWeight.bold, // Make it bold
              fontSize: 24, // Optional: Increase the font size
            ),
          ),
          const SizedBox(height: 20),
          // Additional Text Widget
          const Text(
            'Welcome to Flutter!',
            style: TextStyle(fontSize: 20),
          ),
          const SizedBox(
              height: 20), // Adds space between the text and image/button

          // Optional Image Widget (using a assets file)
          Image.asset(
            'assets/images/pngwing.com.png',
            height: 200,
          ),

          const SizedBox(height: 20), // Adds space between the image and button

          // Button with Snackbar
          ElevatedButton(
            onPressed: () {
              // Show Snackbar when the button is pressed
              const snackBar = SnackBar(content: Text('Button Pressed!'));
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green, // Change button color to green
            ),
            child: const Text('Press Me'),
          ),
        ],
      ),
    );
  }
}
