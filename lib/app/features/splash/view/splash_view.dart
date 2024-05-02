library splash;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/routes/app_pages.dart';

// add binding to library
part '../binding/splash_binding.dart';

// add controller to library
part '../controller/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
                () => Visibility(
                visible: controller.isLoading.value,
                child: const CircularProgressIndicator()),
          ),
          ListTile(
            contentPadding: const EdgeInsets.only(bottom: 10.0),
            title: Center(
              child: Text(
                controller.appTitle,
                style: Theme.of(context).textTheme.displayMedium?.copyWith(color: Colors.purple, ),
              ),
            ),
            subtitle:  Center(
              child: Text(
                "Manage, print and get your documents with ease and at affordable price",
                style: Theme.of(context).textTheme.labelSmall,
              ),
            ),
          )
        ],
      ),
    );
  }
}
