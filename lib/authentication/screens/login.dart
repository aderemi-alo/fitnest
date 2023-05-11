import 'package:fitnest/authentication/screens/create_account.dart';
import 'package:fitnest/dashboard/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:fitnest/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fitnest/widgets/custom_widgets.dart';
import 'package:flutter/gestures.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 40,
            horizontal: 40,
          ),
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
                      const SizedBox(height: 5),
                      Text(
                        "Welcome Back",
                        style: h4.copyWith(fontWeight: bold),
                      ),
                      const SizedBox(height: 30),
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
                      Text(
                        "Forgot your password?",
                        style: smallText.copyWith(
                          color: gray2,
                          decoration: TextDecoration.underline,
                        ),
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    CustomBlueButton(
                      buttonText: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/icons/Login.svg"),
                          SizedBox(width: 12),
                          Text("Login",
                              style: largeText.copyWith(
                                  fontWeight: bold, color: white)),
                        ],
                      ),
                      function: () => Get.to(() => const Home()),
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
                          text: "Don't have an account yet? ",
                          style: mediumText.copyWith(
                            fontWeight: regular,
                            color: black,
                          )),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => Get.to(() => CreateAccount()),
                          text: "Register",
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
