import 'package:flutter/material.dart';

import 'login_component/login_component.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'login_screen';

  const LoginScreen({
    super.key,
    required String type,
  });

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Text Controllers
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  get type => "user";

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton.outlined(
              onPressed: () => Navigator.of(context).pop(),
              icon: const Icon(Icons.arrow_back)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Login to',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(
                width: 2.0,
              ),
              AnimatedContainer(
                  duration: const Duration(seconds: 1),
                  curve: Curves.bounceIn,
                  child: const Icon(Icons.arrow_circle_down_outlined)),
            ],
          ),
          centerTitle: true,
        ),
        body: type == "user" || type == "vendor"
            ? LoginComponent(
                emailController: emailController,
                passwordController: passwordController, type: 'user',)
            : LoginComponent(
                emailController: emailController,
                passwordController: passwordController, type: 'vendor',));
  }
}

