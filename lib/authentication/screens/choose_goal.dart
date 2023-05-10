import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:get/get.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ChooseGoal extends StatefulWidget {
  const ChooseGoal({super.key});

  @override
  State<ChooseGoal> createState() => _ChooseGoalState();
}

class _ChooseGoalState extends State<ChooseGoal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90, vertical: 40),
              child: Column(
                children: [
                  Text(
                    "What is your goal?",
                    style: h4.copyWith(fontWeight: bold, color: black),
                  ),
                  SizedBox(height: 5),
                  Text(
                    "It will help us to choose a best program for you",
                    style:
                        smallText.copyWith(fontWeight: regular, color: gray1),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
