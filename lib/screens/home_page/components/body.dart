import 'package:chiakma/components/default_button.dart';
import 'package:chiakma/controller/auth_controller.dart';
import 'package:chiakma/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultButton(
        press: () {
          AuthController.instance.logout();
        },
        text: "test",
      ),
    );
  }
}
