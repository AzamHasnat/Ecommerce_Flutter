import 'package:ecommerce_flutter/core/routes.dart';
import 'package:ecommerce_flutter/core/ui.dart';
import 'package:ecommerce_flutter/presentation/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: Themes.defaultTheme,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: Routes.onGeneratedRoute,
      initialRoute: LoginScreen.routeName,
    );
  }
}
