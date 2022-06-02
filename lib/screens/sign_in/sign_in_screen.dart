import 'package:chiakma/routes.dart';
import 'package:chiakma/screens/sign_in/components/body.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Get.toNamed(Routes.main);
            }),
        title: const Text(
          "Sign in",
        ),
      ),
      body: const Body(),
    );
  }
}
