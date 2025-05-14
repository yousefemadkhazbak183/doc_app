import 'package:doc_app/core/di/dependency_injection.dart';
import 'package:doc_app/core/rotuing/routers.dart';
import 'package:doc_app/features/home/ui/home_screen.dart';
import 'package:doc_app/features/login/logic/cubit/login_cubit.dart';
import 'package:doc_app/features/login/ui/login_screen.dart';
import 'package:doc_app/features/signup/logic/cubit/sign_up_cubit.dart';
import 'package:doc_app/features/signup/ui/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/onboarding/onboarding_screen.dart';

class AppRouter {
  Route generateRouter(RouteSettings settings) {
    // this arguments to be passed to the screen like this class name.
    final arguments = settings.arguments;
    switch (settings.name) {
      case Routers.onBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OnboardingScreen());
      case Routers.loginScreen:
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<LoginCubit>(),
                child: const LoginScreen(),
              ),
        );
        case Routers.signupScreen: 
        return MaterialPageRoute(
          builder:
              (_) => BlocProvider(
                create: (context) => getIt<SignUpCubit>(),
                child: const SignUpScreen(),
              ),
        );
         case Routers.homeScreen:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder:
              (_) => Scaffold(
                body: Center(
                  child: Text('No route defined for ${settings.name}'),
                ),
              ),
        );
    }
  }
}
