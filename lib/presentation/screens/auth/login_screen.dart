import 'package:ecommerce_flutter/core/ui.dart';
import 'package:ecommerce_flutter/presentation/widgets/link_button.dart';
import 'package:ecommerce_flutter/presentation/widgets/primary_button.dart';
import 'package:ecommerce_flutter/presentation/widgets/primary_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const String routeName = "login";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text(
          "Ecommerce App",
        ),
      ),
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.all(16),
        children: [
          Text("Log In", style: TextStyles.heading2),
          const SizedBox(height: 16),
          PrimaryTextField(
            controller: emailController,
            labelText: "Email Address",
          ),
          const SizedBox(height: 16),
          PrimaryTextField(
            controller: passwordController,
            labelText: "Password",
            obscureText: true,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              LinkButton(
                text: "Forgot Password?",
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 16),
          PrimaryButton(
            text: "Login",
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 16),
              ),
              LinkButton(
                text: "Sign Up",
                onPressed: () {},
              )
            ],
          )
        ],
      )),
    );
  }
}
