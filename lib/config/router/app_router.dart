import 'package:nomixe/config/router/custom_navigator_observer.dart';
import 'package:nomixe/presentation/ui/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:path/path.dart';

class AppRouter {
  // WELCOME ROUTE
  static const String splashScreen = '/';

  // ON BOARDING SCREEN
  static const String onBoardingScreen = '/on-boarding-screen';

  // AUTH ROUTE
  static const String loginScreen = '/login-screen';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String verifyPhoneScreen = '/verify-phone-screen';
  static const String otpVerificationScreen = '/otp-verification-screen';
  static const String resetPasswordScreen = '/reset-password-screen';
  static const String changePassword = '/change-password-screen';
  static const String signupScreen = '/signup-screen';

  // PROFILE SETUP ROUTE
  static const String createProfileScreen = '/create-profile-screen';
  static const String setupInfoScreen = '/setup-info-screen';
  static const String setupPhotoScreen = '/setup-photo-screen';
  static const String setupVideoScreen = '/setup-video-screen';
  static const String lifeStoryScreen = '/life-story-screen';
  static const String invitationScreen = '/invitation-screen';
  static const String referralSourceScreen = '/referral-source-screen';

  // HOME ROUTE
  static const String homeScreen = '/home-screen';

  static final GoRouter router = GoRouter(
    observers: [CustomNavigatorObserver()],
    navigatorKey: Get.key,
    initialLocation: splashScreen,
    routes: <RouteBase>[
      _buildRoute(splashScreen, const SplashScreen()),
    ],
  );

  // FUNCTION THAT CREATE ROUTES
  static RouteBase _buildRoute(String path, Widget page) {
    return GoRoute(
      path: path,
      pageBuilder: (context, state) => _getPageRoute(
        context: context,
        state: state,
        child: page,
      ),
    );
  }

  // FUNCTION THAT HANDLES NAVIGATION
  static CustomTransitionPage _getPageRoute({
    required BuildContext context,
    required GoRouterState state,
    required Widget child,
  }) {
    // return MaterialPageRoute(builder: (ctx) => child);
    return CustomTransitionPage(
      key: state.pageKey,
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
    );
  }

  // 404 PAGE
  static PageRoute _errorRoute() {
    return MaterialPageRoute(builder: (ctx) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('404'),
        ),
        body: const Center(
          child: Text('ERROR 404: Not Found'),
        ),
      );
    });
  }
}
