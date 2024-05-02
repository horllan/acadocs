part of splash;

class SplashController extends GetxController {
  final appTitle = "Acadocs";

  get isLoading => true.obs;

  @override
  void onInit() async {
    super.onInit();

    await Future.delayed(const Duration(seconds: 2));
    isLoading.value = false;
    gotoOnboarding();
  }


  void gotoOnboarding() => Get.offNamed(AppRoutes.onboardingScreen);
}