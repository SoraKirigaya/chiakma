import 'package:chiakma/constants.dart';
import 'package:chiakma/routes.dart';
import 'package:chiakma/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NoAccountText extends StatelessWidget {
  const NoAccountText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(16),
          ),
        ),
        GestureDetector(
          onTap: () {
            Get.toNamed(Routes.signup);
          },
          child: Text(
            "Sign up",
            style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              color: kPrimaryColor,
            ),
          ),
        )
      ],
    );
  }
}
