library onboard_library;

import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../splash/view/splash_view.dart';
import '../../user_login/view/login_view.dart';

part '../binding/onboard_binding.dart';

part '../controller/onboard_controller.dart';

class OnboardingHomeView extends GetView<OnboardingController> {
  const OnboardingHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Account Type Selection",
        ),
        backgroundColor: Colors.purple,
        elevation: 1.0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.symmetric(vertical: 20),
                title: Text(
                  "Welcome to Acadocs",
                  style: Theme
                      .of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.purple,),
                ),
                subtitle: Text(
                  "A document management platform to help you with all your "
                      "academic documents whenever and wherever.",
                  style: Theme
                      .of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(
                      fontWeight: FontWeight.bold, color: Colors.black54),
                ),
            ),
            const SizedBox(
              height: 30.0,
            ), Text(
              "GOTO",
              style: Theme
                  .of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(
                  fontWeight: FontWeight.bold, color: Colors.redAccent),
            ),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                              const LoginScreen(type: 'vendor',)));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.teal)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "User Account",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                Expanded(
                  flex: 1,
                  child: TextButton(
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const LoginScreen(
                            type: 'vendor',)));
                    },
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                                (states) => Colors.blue)),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Vendor Account",
                        style: Theme
                            .of(context)
                            .textTheme
                            .bodyLarge
                            ?.copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
