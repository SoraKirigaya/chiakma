import 'package:chiakma/components/default_button.dart';
import 'package:chiakma/constants.dart';
import 'package:chiakma/loading.dart';
import 'package:chiakma/screens/sign_in/sign_in_screen.dart';
import 'package:chiakma/screens/splash/components/splash_content.dart';
import 'package:chiakma/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:chiakma/routes.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "Welcome to Chiakma, Let's eat",
      "image": "assets/images/splash_1.png"
    },
    {
      "text": "We serve the best quality food here \nin Batam",
      "image": "assets/images/splash_2.png"
    },
    {
      "text": "We help you to order much easier. \nWith this simple app",
      "image": "assets/images/splash_3.png"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  physics: const BouncingScrollPhysics(),
                  itemCount: splashData.length,
                  itemBuilder: (context, index) => SplashContent(
                    text: splashData[index]["text"] ?? "",
                    image: splashData[index]["image"] ?? "",
                  ),
                )),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
                child: Column(
                  children: [
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    const Spacer(),
                    DefaultButton(
                      text: "Continue",
                      press: () async {
                        showLoadingIndicator();
                        hideLoadingIndicator();
                        Get.toNamed(Routes.signin);
                      },
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
