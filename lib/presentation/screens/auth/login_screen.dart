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
          const Text(
            "Log In",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 16),
          TextFormField(
            controller: emailController,
          
            decoration: const InputDecoration(labelText: "Email Address",border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          TextFormField(
            obscureText: true,
            controller: passwordController,
            decoration: const InputDecoration(labelText: "Password",border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          CupertinoButton(
            child: const Text("Login"),
            onPressed: () {},
            color: Colors.blue[500],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Don't have an account?",
                style: TextStyle(fontSize: 16),
              ),
              CupertinoButton(
                  child: const Text(
                    "Sign up",
                    style: TextStyle(fontSize: 16),
                  ),
                  onPressed: () {})
            ],
          )
        ],
      )),
    );
  }
}
