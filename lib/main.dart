import 'package:anganwadi_notification_app/screens/splash_screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Anganwadi Notification App',
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
      home: const SplashScreen(),
    );
  }
}
