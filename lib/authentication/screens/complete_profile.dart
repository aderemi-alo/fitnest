import 'package:fitnest/authentication/screens/choose_goal.dart';
import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:fitnest/widgets/custom_widgets.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
  String? _selectedGender;

  TextEditingController weight = TextEditingController();
  TextEditingController height = TextEditingController();
  TextEditingController dob = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Center(
                  child: Image.asset("assets/images/complete-profile.png"),
                ),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Text(
                        "Let's complete your profile",
                        style: h4.copyWith(color: black, fontWeight: bold),
                      ),
                      Text(
                        "It will help us to know more about you",
                        style: smallText.copyWith(
                            color: gray1, fontWeight: regular),
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: DropdownButtonFormField(
                          isExpanded: true,
                          value: _selectedGender,
                          items: ["Male", "Female", "Do not want to specify"]
                              .map((e) => DropdownMenuItem(
                                    value: e,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: borderColor,
                                      ),
                                      child: Text(
                                        e,
                                        style: smallText.copyWith(
                                            color: gray1, fontWeight: regular),
                                      ),
                                    ),
                                  ))
                              .toList(),
                          onChanged: (val) {
                            setState(() {
                              _selectedGender = val as String;
                            });
                          },
                          icon: SvgPicture.asset(
                            "assets/icons/ArrowDown.svg",
                            color: gray1,
                            height: 18,
                            width: 18,
                          ),
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "Choose Gender",
                            hintStyle: smallText.copyWith(
                                fontWeight: regular, color: gray2),
                            prefixIconConstraints:
                                const BoxConstraints(maxHeight: 18),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: SvgPicture.asset(
                                "assets/icons/2User.svg",
                                height: 18,
                                width: 18,
                                color: gray1,
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 0.0)),
                            prefixIconColor: gray1,
                            focusedBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(14),
                                borderSide: const BorderSide(
                                    color: Colors.transparent, width: 0.0)),
                            fillColor: borderColor,
                          ),
                        ),
                      ),
                      SizedBox(height: 15),
                      CustomTextField(
                        controller: dob,
                        iconLocation: "assets/icons/Calendar.svg",
                        hintText: "Date of Birth",
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Flexible(
                            child: CustomTextField(
                              controller: weight,
                              iconLocation: "assets/icons/WeightScale.svg",
                              hintText: "Your Weight",
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                gradient: purpleLinear,
                                borderRadius: BorderRadius.circular(14)),
                            child: Center(
                              child: Text(
                                "KG",
                                style: smallText.copyWith(
                                    fontWeight: medium, color: white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Flexible(
                            child: CustomTextField(
                              controller: weight,
                              iconLocation: "assets/icons/Swap.svg",
                              hintText: "Your Height",
                            ),
                          ),
                          SizedBox(width: 15),
                          Container(
                            height: 48,
                            width: 48,
                            decoration: BoxDecoration(
                                gradient: purpleLinear,
                                borderRadius: BorderRadius.circular(14)),
                            child: Center(
                              child: Text(
                                "CM",
                                style: smallText.copyWith(
                                    fontWeight: medium, color: white),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomBlueButton(
              buttonText: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Next",
                    style: largeText.copyWith(fontWeight: bold, color: white),
                  ),
                  SvgPicture.asset(
                    "assets/icons/ArrowRight.svg",
                    height: 20,
                    width: 20,
                  )
                ],
              ),
              function: () => Get.to(() => const ChooseGoal()))
        ],
      )),
    );
  }
}
