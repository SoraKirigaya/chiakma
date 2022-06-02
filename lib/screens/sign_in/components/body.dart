import 'package:chiakma/components/custom_suffix_icon.dart';
import 'package:chiakma/components/default_button.dart';
import 'package:chiakma/components/no_account_text.dart';
import 'package:chiakma/components/text_form_field.dart';
import 'package:chiakma/constants.dart';
import 'package:chiakma/components/social_card.dart';
import 'package:chiakma/routes.dart';
import 'package:chiakma/screens/forgot_password/forgot_password_screen.dart';
import 'package:chiakma/size_config.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
            ),
            child: Column(
              children: [
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  "Sign in with your email and password \nor continue with social media",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.08,
                ),
                const SignForm(),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.05,
                ),
                Row(children: [
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: const Divider(
                          color: kTextColor,
                          height: 36,
                        )),
                  ),
                  const Text("Or"),
                  Expanded(
                    child: Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: const Divider(
                          color: kTextColor,
                          height: 36,
                        )),
                  ),
                ]),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialCard(
                      icon: "assets/icons/google-icon.svg",
                      press: () {},
                    ),
                    SizedBox(
                      width: getProportionateScreenWidth(40),
                    ),
                    SocialCard(
                      icon: "assets/icons/facebook-2.svg",
                      press: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: SizeConfig.screenHeight * 0.04,
                ),
                const NoAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  const SignForm({Key? key}) : super(key: key);

  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          TextInputField(
            hintText: "Enter your email",
            labelText: "Email",
            textEditingController: emailController,
            textInputType: TextInputType.emailAddress,
            svgImage: "assets/icons/Mail.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          TextInputField(
            hintText: "Enter your password",
            labelText: "Password",
            textEditingController: passwordController,
            textInputType: TextInputType.emailAddress,
            isPass: true,
            svgImage: "assets/icons/Lock.svg",
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (value) {},
              ),
              const Text("Remember me"),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  Get.toNamed(Routes.forgotpassword);
                },
                child: const Text(
                  "Forgot password",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          DefaultButton(text: "Continue", press: () {}),
        ],
      ),
    );
  }
}
