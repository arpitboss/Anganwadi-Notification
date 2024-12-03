import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Privacy Policy',
          style: GoogleFonts.aBeeZee(),
        ),
        leading: IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'This app does not automatically capture any specific personal information from you, such as your name, phone number, or email address, that allows us to identify you individually. Whenever the app requests you to provide personal information, you will be informed of the specific purposes for which the information is gathered, and adequate security measures will be taken to protect your personal information.\n\n'
          'We do not sell or share any personally identifiable information volunteered on the app with any third parties (public or private). Any information provided to this app will be protected from loss, misuse, unauthorized access or disclosure, alteration, or destruction.\n\n'
          'We gather certain information about the user, such as Internet protocol (IP) addresses, domain names, browser types, operating systems, the date and time of visits, and the pages visited. We make no attempt to link these addresses with the identity of individuals visiting our app unless an attempt to damage the app has been detected.',
          style: GoogleFonts.lato(fontSize: 14),
        ),
      ),
    );
  }
}
