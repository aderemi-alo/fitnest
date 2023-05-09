import 'package:fitnest/authentication/screens/create_account.dart';
import 'package:fitnest/onboarding/screens/onboarding_page4.dart';
import 'package:fitnest/onboarding/screens/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitnest/constants.dart';
import 'package:hexcolor/hexcolor.dart';
import 'onboarding_page1.dart';
import 'onboarding_page2.dart';
import 'onboarding_page3.dart';
import 'package:simple_circular_progress_bar/simple_circular_progress_bar.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  void initState() {
    super.initState();
    valueNotifier = ValueNotifier(pageIndex * 25);
  }

  @override
  void dispose() {
    valueNotifier.dispose();
    super.dispose();
  }

  late ValueNotifier<double> valueNotifier;
  double pageIndex = 1.0;
  final PageController _pageController = PageController();
  bool onLastPage = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              onPageChanged: (index) {
                onLastPage = (index == 3);
              },
              children: const [
                OnboardingPage1(),
                OnboardingPage2(),
                OnboardingPage3(),
                OnboardingPage4(),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 50.0, horizontal: 30),
            child: GestureDetector(
              onTap: () {
                setState(() {
                  pageIndex++;
                  valueNotifier.value = pageIndex * 25;
                  onLastPage
                      ? Get.to(CreateAccount())
                      : _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut);
                });
              },
              child: Stack(
                children: [
                  Positioned(
                    left: 2.5,
                    right: 2.5,
                    top: 2.5,
                    bottom: 2.5,
                    child: Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                          gradient: blueLinear, shape: BoxShape.circle),
                      child: Icon(
                        Icons.chevron_right,
                        color: white,
                      ),
                    ),
                  ),
                  Positioned(
                    child: Stack(
                      children: [
                        SimpleCircularProgressBar(
                          animationDuration: 2,
                          size: 60,
                          valueNotifier: valueNotifier,
                          progressStrokeWidth: 2.0,
                          backStrokeWidth: 2.0,
                          progressColors: [
                            HexColor("#92A3FD"),
                            HexColor("#9DCEFF"),
                          ],
                          mergeMode: false,
                          backColor: Colors.white,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
