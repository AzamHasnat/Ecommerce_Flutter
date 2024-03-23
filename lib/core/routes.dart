import 'package:ecommerce_flutter/presentation/screens/auth/login_screen.dart';
import 'package:ecommerce_flutter/presentation/screens/auth/signup_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Routes {
  static Route? onGeneratedRoute(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const LoginScreen());

      case SignupScreen.routeName:
        return CupertinoPageRoute(builder: (context) => const SignupScreen());

      default:
        return null; //404
    }
  }
}
