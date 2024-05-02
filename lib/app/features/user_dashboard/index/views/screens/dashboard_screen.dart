library dashboard;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../screens/home.dart';


// binding
part '../../bindings/dashboard_binding.dart';

// controller
part '../../controllers/dashboard_controller.dart';

// model

// component
part '../components/bottom_navbar.dart';

class UserDashboardScreen extends GetView<UserDashboardController> {
  const UserDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: controller.page,
        onPageChanged: (index) => controller.onChangedPage(index),
        children: const [
          HomeScreen(),
        ],
      ),
      bottomNavigationBar: Obx(
        () => _BottomNavbar(
          currentIndex: controller.currentIndex.value,
          onSelected: (index) {
            controller.changePage(index);
          },
        ),
      ),
    );
  }
}
