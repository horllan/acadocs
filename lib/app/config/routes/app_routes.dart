part of app_pages;

class AppRoutes {
  static const splash = _AppPath.splashScreen;
  static const onboardingScreen = _AppPath.onboarding;
  static const loginScreen = _AppPath.loginScreen;
  static const signupScreen = _AppPath.signupScreen;
  static const userDashboardScreen = _AppPath.userDashboardScreen;
  static const authenticateScreen = _AppPath.authenticate;
  static const userHomeScreen = _AppPath.userHome;
  static const vendorHomeScreen = _AppPath.vendorHome;
}

// private class created for ease and readability
class _AppPath {

  static const splashScreen = "/";
  static const onboarding = "/onboarding";
  static const loginScreen = "/user_login";
  static const signupScreen = "/user_signup";
  static const userDashboardScreen = "/user_dashboard";
  static const authenticate = "/authenticate";
  static const userHome = "/user_home";
  static const vendorHome = "/vendor_home";
}