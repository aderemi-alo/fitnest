import 'package:fitnest/authentication/screens/registration_success.dart';
import 'package:fitnest/widgets/custom_blue_button.dart';
import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ChooseGoal extends StatefulWidget {
  const ChooseGoal({super.key});

  @override
  State<ChooseGoal> createState() => _ChooseGoalState();
}

class _ChooseGoalState extends State<ChooseGoal> {
  List options = [
    [
      "assets/images/ImproveShape.svg",
      "Improve Shape",
      "I have a low amount of body fat and need / want to build more muscle",
    ],
    [
      "assets/images/Lean&Tone.svg",
      "Lean & Tone",
      "I’m “skinny fat”. look thin but have no shape. I want to add learn muscle in the right way",
    ],
    [
      "assets/images/LoseFat.svg",
      "Lose Fat",
      "I have over 20 lbs to lose. I want to drop all this fat and gain muscle mass",
    ],
  ];

  double carouselHeight = 478;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 40),
          child: Column(
            children: [
              Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 90),
                      child: Column(
                        children: [
                          Text(
                            "What is your goal?",
                            style: h4.copyWith(fontWeight: bold, color: black),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            "It will help us to choose a best program for you",
                            style: smallText.copyWith(
                                fontWeight: regular, color: gray1),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 50),
                    CarouselSlider(
                      items: options.map((e) {
                        return Builder(builder: (BuildContext context) {
                          return SingleChildScrollView(
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                  gradient: blueLinear,
                                  borderRadius: BorderRadius.circular(22)),
                              child: Padding(
                                padding: const EdgeInsets.all(30.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 294,
                                      child: SvgPicture.asset(e[0]),
                                    ),
                                    const SizedBox(height: 25),
                                    Text(
                                      e[1],
                                      style: mediumText.copyWith(
                                          fontWeight: semiBold, color: white),
                                    ),
                                    Container(
                                      width: 50,
                                      color: white,
                                      height: 1,
                                    ),
                                    const SizedBox(height: 20),
                                    Text(
                                      e[2],
                                      style: smallText.copyWith(
                                          fontWeight: regular, color: white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        });
                      }).toList(),
                      options: CarouselOptions(
                        height: 478,
                        enlargeCenterPage: true,
                        enableInfiniteScroll: true,
                      ),
                    ),
                  ],
                ),
              ),
              CustomBlueButton(
                  buttonText: Text(
                    "Confirm",
                    style: largeText.copyWith(fontWeight: bold, color: white),
                  ),
                  page: RegistrationSuccess())
            ],
          ),
        ),
      ),
    );
  }
}
