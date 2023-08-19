import 'package:flutter/material.dart';

import 'common/widgets/error.dart';
import 'features/auth/screens/login_screen.dart';

MaterialPageRoute generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    default:
      return MaterialPageRoute(
          builder: (_) => const Scaffold(
                body: ErrorScreen(error: "This Page Does not exist"),
              ));
  }
}
