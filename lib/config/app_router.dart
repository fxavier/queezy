import 'package:flutter/material.dart';
import 'package:queezy/screens/screens.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => const CustomSplashScreen());
      case '/signup':
        return MaterialPageRoute(builder: (_) => const Signup());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            appBar: AppBar(
              title: const Text('Error'),
            ),
            body: const Center(
              child: Text('Route not found'),
            ),
          ),
        );
    }
  }
}
