import 'package:chiakma/screens/forgot_password/forgot_password_screen.dart';
import 'package:chiakma/screens/home_page/home_page_screen.dart';
import 'package:chiakma/screens/sign_in/sign_in_screen.dart';
import 'package:chiakma/screens/sign_up/sign_up_screen.dart';
import 'package:chiakma/screens/splash/splash_screen.dart';
import 'package:get/get.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: Routes.main, page: () => const SplashScreen()),
    GetPage(name: Routes.signin, page: () => const SignInScreen()),
    GetPage(
        name: Routes.forgotpassword, page: () => const ForgotPasswordScreen()),
    GetPage(name: Routes.signup, page: () => const SignUpScreen()),
    GetPage(name: Routes.homepage, page: () => const HomePageScreen()),
  ];
}

class Routes {
  Routes._();

  static const String main = '/';
  static const String signin = '/signin';
  static const String forgotpassword = '/forgotpassword';
  static const String signup = '/signup';
  static const String homepage = '/homepage';
}


// var parameters = <String, String>{"title":"title", "title2": 'title2'};
// Get.toNamed("/page", parameters: parameters);