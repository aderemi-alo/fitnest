import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitnest/src/constants/constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              child: SvgPicture.asset("assets/logo/FitnestXlogo.svg"),
              duration: Duration(milliseconds: 1600),
              curve: Curves.bounceIn,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text(
                "Everybody Can Train",
                style: subtitle.copyWith(color: gray1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
