import 'package:flutter/material.dart';
import 'package:flutter_advanced/features/login/ui/login_screen.dart';
import 'package:flutter_advanced/features/onboarding/onboarding_screen.dart';

import 'routes.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    // like extra data in goRouter
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routes.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routes.loginScreen:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
