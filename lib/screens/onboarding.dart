import 'package:cardholder/constants/colors.dart';
import 'package:cardholder/screens/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:intro_screen_onboarding_flutter/introduction.dart';
import 'package:intro_screen_onboarding_flutter/introscreenonboarding.dart';

class OnboardingScreen extends StatelessWidget {
  final List<Introduction> list = [
    Introduction(
      title: 'Backup Your Cards',
      subTitle: 'Keep your ID cards safe and secure',
      imageUrl: 'assets/imgs/card3.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return IntroScreenOnboarding(
      backgroudColor: Colors.white,
      foregroundColor: primaryColor900,
      introductionList: list,
      onTapSkipButton: () => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => const DashboardScreen(),
        ),
        (route) => false,
      ),
      skipTextStyle: const TextStyle(
        color: primaryColor900,
        fontSize: 18,
      ),
    );
  }
}
