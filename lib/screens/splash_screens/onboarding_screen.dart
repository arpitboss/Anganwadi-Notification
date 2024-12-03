import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:gap/gap.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../helpers/privacy_policy.dart';
import '../../helpers/terms_and_conditions.dart';
import '../auth_screens/login_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentIndex = 0;

  final List<String> _images = [
    'assets/Movable_image_1.png',
    'assets/Movable_image_2.png',
    'assets/Movable_image_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFFFFF),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          const Gap(20),
          Text(
            'Welcome to Anganwadi Notification App',
            textAlign: TextAlign.center,
            style: GoogleFonts.aBeeZee(
              fontSize: 28,
              fontWeight: FontWeight.bold,
            ),
          ),
          CarouselSlider(
            items: _images.map((image) {
              return Builder(
                builder: (BuildContext context) {
                  return Image.asset(
                    image,
                    width: double.infinity,
                  );
                },
              );
            }).toList(),
            options: CarouselOptions(
              enlargeFactor: 0.8,
              autoPlay: true,
              aspectRatio: 1.0,
              enlargeCenterPage: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentIndex = index;
                });
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: _images.map((url) {
              int index = _images.indexOf(url);
              return Container(
                width: 8.0,
                height: 8.0,
                margin:
                    const EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentIndex == index
                      ? const Color.fromRGBO(0, 0, 0, 0.9)
                      : const Color.fromRGBO(0, 0, 0, 0.4),
                ),
              );
            }).toList(),
          ),
          const Gap(10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate to login screen
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const EnterPhoneNumberScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      backgroundColor: const Color(0xFFFF866B),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: Text(
                      'Log in',
                      style: GoogleFonts.aBeeZee(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
                const Gap(10),
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                        msg: "This button is temporarily disabled",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.BOTTOM,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red[400],
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      side: const BorderSide(color: Color(0xFFFF866B)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      textStyle: const TextStyle(fontSize: 16),
                    ),
                    child: Text(
                      'Sign up',
                      style: GoogleFonts.aBeeZee(
                        color: const Color(0xFFFF866B),
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Gap(8),
          // const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(14.0),
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: 'By continuing you accept our ',
                style: GoogleFonts.lato(color: Colors.black54, fontSize: 14),
                children: <TextSpan>[
                  TextSpan(
                    text: 'Terms and Conditions',
                    style: GoogleFonts.lato(
                        color: const Color(0xFFFF866B),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Navigate to Terms of Service
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                const TermsAndConditionsScreen(),
                          ),
                        );
                      },
                  ),
                  TextSpan(
                    text: '. Also learn how we process your data in our ',
                    style:
                        GoogleFonts.lato(color: Colors.black54, fontSize: 14),
                  ),
                  TextSpan(
                    text: 'Privacy Policy',
                    style: GoogleFonts.lato(
                        color: const Color(0xFFFF866B),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const PrivacyPolicyScreen(),
                          ),
                        );
                      },
                  ),
                  TextSpan(
                    text: ' and Cookies Policy',
                    // style:
                    //     GoogleFonts.lato(color: Colors.black54, fontSize: 14),
                  ),
                  TextSpan(
                    text: '.',
                    // style:
                    //     GoogleFonts.lato(color: Colors.black54, fontSize: 14),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
