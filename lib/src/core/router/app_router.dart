import 'package:flutter/material.dart';
import 'package:notely/src/core/router/slide_down_route.dart';
import 'package:notely/src/features/account_information/account_information.dart';
import 'package:notely/src/features/authentication/authentication.dart';
import 'package:notely/src/features/manage_notes/manage_notes.dart';

class AppRouter {
  const AppRouter._();

  static const onboarding = '/onboarding';
  static const signUp = '/signUp';
  static const subscribe = '/subscribe';
  static const createFirstNote = '/createFirstNote';
  static const editNote = '/editNote';
  static const profile = '/profile';
  static const recentNote = '/recentNote';

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case onboarding:
        return _route(const OnboardingPage());
      case signUp:
        return _route(const SignUpPage());
      case subscribe:
        return _route(const SubscribePage());
      case createFirstNote:
        return _route(const CreateFirstNotePage());
      case editNote:
        return _route(const EditNotePage());
      case profile:
        return SlideFromLeftCornerRoute(child: const ProfilePage());
      case recentNote:
        return _route(const RecentNotesPage());
      default:
        return _route(const Scaffold());
    }
  }

  static PageRoute<dynamic> _route(Widget child) {
    return MaterialPageRoute(
      builder: (context) {
        return child;
      },
    );
  }
}
