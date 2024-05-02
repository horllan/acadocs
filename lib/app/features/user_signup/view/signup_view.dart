import 'package:flutter/material.dart';

import 'signup_component/signup_component.dart';

class SignupScreen extends StatefulWidget {
  static String id = 'signup_screen';

  const SignupScreen({
    super.key,
    required String type,
  });

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  // Text Controllers
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  get type => "user";

  @override
  void dispose() {
    firstnameController.dispose();
    lastnameController.dispose();
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
                'Signup to',
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
        body: SignupComponent(
          emailController: emailController,
          passwordController: passwordController,
          type: 'user',
          firstnameController: firstnameController,
          lastnameController: lastnameController,
        ));
  }
}
