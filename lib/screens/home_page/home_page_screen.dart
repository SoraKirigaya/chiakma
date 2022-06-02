import 'package:chiakma/routes.dart';
import 'package:chiakma/screens/forgot_password/forgot_password_screen.dart';
import 'package:chiakma/screens/home_page/components/body.dart';
import 'package:chiakma/screens/sign_in/sign_in_screen.dart';
import 'package:chiakma/screens/sign_up/sign_up_screen.dart';
import 'package:chiakma/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        leading: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              Get.toNamed(Routes.signin);
            }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Menu"),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank), label: "Cart"),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank), label: "Favorite"),
          BottomNavigationBarItem(
              icon: Icon(Icons.food_bank), label: "Account"),
        ],
      ),
    );
  }
}
