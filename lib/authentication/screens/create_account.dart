import 'package:fitnest/authentication/screens/complete_profile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:fitnest/widgets/custom_widgets.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;
  bool _termsAndConditions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 30, right: 30),
          child: Center(
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Hey there,",
                        style: largeText.copyWith(fontWeight: regular),
                      ),
                      const SizedBox(height: 15),
                      Text(
                        "Create an Account",
                        style: h4.copyWith(fontWeight: bold),
                      ),
                      const SizedBox(height: 30),
                      CustomTextField(
                        controller: firstNameController,
                        iconLocation: "assets/icons/Profileicon.svg",
                        hintText: "First Name",
                      ),
                      const SizedBox(height: 15),
                      CustomTextField(
                        controller: surnameController,
                        iconLocation: "assets/icons/Profileicon.svg",
                        hintText: "Last Name",
                      ),
                      const SizedBox(height: 15),
                      CustomTextField(
                        controller: emailController,
                        iconLocation: "assets/icons/Messageicon.svg",
                        hintText: "Email",
                      ),
                      SizedBox(height: 15),
                      SizedBox(
                        height: 48,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.bottom,
                          style: smallText.copyWith(
                              fontWeight: regular, color: gray2),
                          obscureText: _passwordVisible,
                          controller: passwordController,
                          decoration: InputDecoration(
                            filled: true,
                            hintText: "Password",
                            hintStyle: smallText.copyWith(
                                fontWeight: regular, color: gray2),
                            suffixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15.0),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    _passwordVisible = !_passwordVisible;
                                  });
                                },
                                child: SvgPicture.asset(
                                  _passwordVisible
                                      ? "assets/icons/Hideicon.svg"
                                      : "assets/icons/Showicon.svg",
                                  colorFilter:
                                      ColorFilter.mode(gray1, BlendMode.srcIn),
                                ),
                              ),
                            ),
                            suffixIconConstraints:
                                BoxConstraints(maxHeight: 18),
                            prefixIconConstraints:
                                const BoxConstraints(maxHeight: 18),
                            prefixIcon: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 15),
                              child: SvgPicture.asset(
                                "assets/icons/Lockicon.svg",
                                height: 18,
                                width: 18,
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
                      const SizedBox(height: 10),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                _termsAndConditions = !_termsAndConditions;
                              });
                            },
                            child: Icon(
                              _termsAndConditions
                                  ? LineAwesomeIcons.check_square
                                  : LineAwesomeIcons.stop,
                              color: gray1,
                              size: 25,
                            ),
                          ),
                          SizedBox(width: 10),
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: "By continuing you accept our ",
                                  style: caption.copyWith(
                                    color: gray2,
                                    fontWeight: regular,
                                  ),
                                ),
                                TextSpan(
                                  text: "Privacy Policy ",
                                  style: caption.copyWith(
                                    color: gray2,
                                    fontWeight: regular,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                                TextSpan(
                                  text: "and ",
                                  style: caption.copyWith(
                                    color: gray2,
                                    fontWeight: regular,
                                  ),
                                ),
                                TextSpan(
                                  text: "Term of Use.",
                                  style: caption.copyWith(
                                    color: gray2,
                                    fontWeight: regular,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomBlueButton(
                      buttonText: Text("Register",
                          style: largeText.copyWith(
                              fontWeight: bold, color: white)),
                      page: CompleteProfile(),
                    ),
                    const SizedBox(height: 20),
                    Stack(
                      children: [
                        Divider(
                          color: gray3,
                          thickness: 1,
                        ),
                        Center(
                          child: Container(
                            width: 34,
                            height: 18,
                            decoration: BoxDecoration(color: white),
                            child: Center(
                              child: Text(
                                "Or",
                                style: smallText.copyWith(color: black),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: gray3)),
                            child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Image.asset(
                                    "assets/images/google-logo.png")),
                          ),
                        ),
                        SizedBox(width: 30),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(14),
                                border: Border.all(color: gray3)),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                "assets/images/facebook-logo.svg",
                                height: 10,
                                width: 10,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: "Already have an account? ",
                          style: mediumText.copyWith(
                            fontWeight: regular,
                            color: black,
                          )),
                      TextSpan(
                          recognizer: TapGestureRecognizer()..onTap = () {},
                          text: "Login",
                          style: mediumText.copyWith(
                              fontWeight: regular,
                              foreground: Paint()
                                ..shader =
                                    purpleLinear.createShader(Rect.largest))),
                    ]))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
