import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Terms and Conditions',
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
          'This app is designed, developed, and maintained by the development team of Anganwadi Notification App.\n\n'
          'Though all efforts have been made to ensure the accuracy and correctness of the content in this app, the same should not be construed as a statement of law or used for any legal purposes. In case of any ambiguity or doubts, users are advised to verify / check with the relevant authorities and / or other sources, and to obtain appropriate professional advice.\n\n'
          'Under no circumstances will the development team or the Ministry of Women & Child Development be liable for any expense, loss, or damage including, without limitation, indirect or consequential loss or damage, or any expense, loss, or damage whatsoever arising from use, or loss of use, of data, arising out of or in connection with the use of this app.\n\n'
          'These terms and conditions shall be governed by and construed in accordance with the laws of India. Any dispute arising under these terms and conditions shall be subject to the jurisdiction of the courts of India.\n\n'
          'The information posted on this app could include hypertext links or pointers to information created and maintained by non-Government/private organizations. The Ministry of Women & Child Development is providing these links and pointers solely for your information and convenience. When you select a link to an outside website, you are leaving the Ministry of Women & Child Development website and are subject to the privacy and security policies of the owners/sponsors of the outside website.\n\n'
          'The Ministry of Women & Child Development does not guarantee the availability of such linked pages at all times.',
          style: GoogleFonts.lato(fontSize: 14),
        ),
      ),
    );
  }
}
