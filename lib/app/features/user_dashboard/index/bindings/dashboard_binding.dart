part of dashboard;

class UserDashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => UserDashboardController());
  }
}
