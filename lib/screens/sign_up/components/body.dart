import 'package:chiakma/components/custom_suffix_icon.dart';
import 'package:chiakma/components/default_button.dart';
import 'package:chiakma/components/social_card.dart';
import 'package:chiakma/components/text_form_field.dart';
import 'package:chiakma/constants.dart';

import 'package:chiakma/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Register Account",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: getProportionateScreenWidth(28),
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                "Sign up with your email and password \nor continue with social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              SignUpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.03),
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
              SizedBox(height: SizeConfig.screenHeight * 0.02),
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
                height: getProportionateScreenHeight(20),
              ),
              const Text(
                "By continuing you confirm that you agree \nwith our Terms and Condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpForm extends StatefulWidget {
  const SignUpForm({
    Key? key,
  }) : super(key: key);

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmpasswordController =
      TextEditingController();
  final TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmpasswordController.dispose();
    nameController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(20),
        ),
        child: Column(
          children: [
            TextInputField(
              hintText: "Enter your full name",
              labelText: "Full Name",
              textEditingController: nameController,
              textInputType: TextInputType.text,
              svgImage: "assets/icons/name.svg",
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            TextInputField(
              hintText: "Enter your email",
              labelText: "Email",
              textEditingController: emailController,
              textInputType: TextInputType.emailAddress,
              svgImage: "assets/icons/Mail.svg",
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            TextInputField(
              hintText: "Enter your password",
              labelText: "Password",
              textEditingController: passwordController,
              textInputType: TextInputType.text,
              svgImage: "assets/icons/Lock.svg",
              isPass: true,
            ),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            TextInputField(
              hintText: "Confirm your password",
              labelText: "Password",
              textEditingController: confirmpasswordController,
              textInputType: TextInputType.text,
              svgImage: "assets/icons/Lock.svg",
              isPass: true,
            ),
            SizedBox(
              height: SizeConfig.screenHeight * 0.04,
            ),
            DefaultButton(
              press: () {},
              text: "Continue",
            ),
          ],
        ),
      ),
    );
  }
}
