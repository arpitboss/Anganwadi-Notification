import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Wanna have sex with me!!',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Text('Text me on +91 9838652965',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            const Gap(20),
            Center(
              child: Image.asset('assets/uditya.png'),
            ),
            const Gap(20),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Uditya Prakash',
                  style: TextStyle(fontSize: 20),
                ),
                Icon(
                  Icons.verified_user,
                  color: Colors.green,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
