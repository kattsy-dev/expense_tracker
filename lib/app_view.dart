import 'package:flutter/material.dart';
import 'screens/home/views/home_screen.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF00B2E7),
          secondary: Color(0xFFE064F7),
          tertiary: Color(0xFFFF8D6C), // Correct color code for primary
          onPrimary: Colors.white, // Color for text/icons on the primary color
          outline: Colors.grey,
        ),
        scaffoldBackgroundColor:
            Colors.grey, // Set the background color for the scaffold
        textTheme: const TextTheme(
          bodyMedium: TextStyle(
              color: Colors.black), // Set text color for the background
        ),
      ),
      home: const HomeScreen(),
    );
  }
}
