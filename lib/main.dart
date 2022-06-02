import 'package:chiakma/constants.dart';

import 'package:chiakma/loading.dart';
import 'package:chiakma/routes.dart';
import 'package:chiakma/screens/forgot_password/forgot_password_screen.dart';
import 'package:chiakma/screens/home_page/home_page_screen.dart';
import 'package:chiakma/screens/sign_in/sign_in_screen.dart';
import 'package:chiakma/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:chiakma/screens/splash/splash_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Loading(
      child: GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        home: const SplashScreen(),
        getPages: AppRoutes.routes,
      ),
    );
  }
}
