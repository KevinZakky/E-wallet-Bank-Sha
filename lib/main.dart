import 'package:ewallet_project_app/ui/pages/onboarding_page.dart';
import 'package:ewallet_project_app/ui/pages/setup_id_profile.dart';
import 'package:ewallet_project_app/ui/pages/sign_in_page.dart';
import 'package:ewallet_project_app/ui/pages/sign_up_page.dart';
import 'package:ewallet_project_app/ui/pages/sign_up_set_profile.dart';
import 'package:ewallet_project_app/ui/pages/sign_up_success.dart';
import 'package:ewallet_project_app/ui/pages/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, routes: {
      '/': (context) => const SplashPage(),
      '/onboarding': (context) => const OnboardingPage(),
      '/sign-in': (context) => const SignInPage(),
      '/sign-up': (context) => const SignUpPage(),
      '/sign-up-set-profile': (context) => const SignUpSetProfile(),
      '/setup-id-profile': (context) => const SetupIDProfile(),
      '/sign-up-success': (context) => const SignUpSuccessPage()
    });
  }
}
