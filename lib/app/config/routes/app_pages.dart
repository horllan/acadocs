library app_pages;

import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

import '../../features/onboarding/view/onbaord_view.dart';
import '../../features/splash/view/splash_view.dart';
import '../../features/user_dashboard/index/views/screens/dashboard_screen.dart';
import '../../features/user_login/binding/login_binding.dart';
import '../../features/user_login/view/login_view.dart';

part 'app_routes.dart';

class AppPages {
  // first page to open when the application launch
  static const initialPage = AppRoutes.splash;

  static final routes = [
  GetPage(name: AppRoutes.splash, page: () => const SplashView(), binding: SplashBinding() ),
  GetPage(name: AppRoutes.onboardingScreen, page: () => const OnboardingHomeView(), binding: OnboardingBinding() ),
  GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen(type: 'user',), binding: LoginBinding() ),
  GetPage(name: AppRoutes.loginScreen, page: () => const LoginScreen(type: 'vendor',), binding: LoginBinding() ),
  GetPage(name: AppRoutes.userDashboardScreen, page: () => const UserDashboardScreen(), binding: UserDashboardBinding() ),
  ];
}