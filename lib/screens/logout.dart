import 'package:chiakma/components/default_button.dart';
import 'package:flutter/material.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: DefaultButton(
      press: () {},
      text: "Logout",
    ));
  }
}
