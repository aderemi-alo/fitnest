import 'package:fitnest/src/features/authentication/controllers/signup_controller.dart';
import 'package:fitnest/src/features/authentication/screens/complete_profile/screens/complete_profile.dart';
import 'package:fitnest/src/features/authentication/screens/login/screens/login_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:fitnest/src/constants/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:fitnest/src/reusable_widgets/reusable_widgets.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

  bool _passwordVisible = false;
  bool _termsAndConditions = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        maintainBottomViewPadding: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 40.0, left: 40, right: 40),
          child: Center(
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          "Hey there,",
                          style: largeText.copyWith(fontWeight: regular),
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "Create an Account",
                          style: h4.copyWith(fontWeight: bold),
                        ),
                        const SizedBox(height: 30),
                        CustomTextField(
                          controller: controller.firstNameController,
                          iconLocation: "assets/icons/Profileicon.svg",
                          hintText: "First Name",
                        ),
                        const SizedBox(height: 15),
                        CustomTextField(
                          controller: controller.surnameController,
                          iconLocation: "assets/icons/Profileicon.svg",
                          hintText: "Last Name",
                        ),
                        const SizedBox(height: 15),
                        CustomTextField(
                          controller: controller.emailController,
                          iconLocation: "assets/icons/Messageicon.svg",
                          hintText: "Email",
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 48,
                          child: TextFormField(
                            textAlignVertical: TextAlignVertical.bottom,
                            style: smallText.copyWith(
                                fontWeight: regular, color: gray2),
                            obscureText: _passwordVisible,
                            controller: controller.passwordController,
                            decoration: InputDecoration(
                              filled: true,
                              hintText: "Password",
                              hintStyle: smallText.copyWith(
                                  fontWeight: regular, color: gray2),
                              suffixIcon: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 15.0),
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
                                    colorFilter: ColorFilter.mode(
                                        gray1, BlendMode.srcIn),
                                  ),
                                ),
                              ),
                              suffixIconConstraints:
                                  const BoxConstraints(maxHeight: 18),
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
                            const SizedBox(width: 10),
                            Expanded(
                              child: RichText(
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
                                      text: "Terms of Use.",
                                      style: caption.copyWith(
                                        color: gray2,
                                        fontWeight: regular,
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ],
                                ),
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
                        function: () {
                          if (_formKey.currentState!.validate()) {
                            SignUpController.instace.registerUser(
                              controller.emailController.text.trim(),
                              controller.passwordController.text.trim(),
                            );
                          }
                        },
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
                          const SizedBox(width: 30),
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
                            recognizer: TapGestureRecognizer()
                              ..onTap = () => Get.to(() => const LoginScreen()),
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
      ),
    );
  }
}
