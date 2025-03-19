import 'package:doc_app/core/rotuing/routers.dart';
import 'package:doc_app/features/login/ui/login_screen.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    // this arguments to be passed to the screen like this class name.
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.onBoardingScreen:
        return MaterialPageRoute(
          builder: (_) => OnboardingScreen(),
          );
      case Routers.loginScreen:
        return MaterialPageRoute(
          builder: (_) => LoginScreen(),
          );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        )
        );
    }
  }
}