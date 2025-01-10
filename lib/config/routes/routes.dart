import 'package:chatty/config/routes/routes_name.dart';
import 'package:chatty/screens/onboarding/onboarding1_screen.dart';
import 'package:chatty/screens/onboarding/splash_screen.dart';

import '../../screens/dashboard/dashboard.dart';

class Routes {
  static final routes = {
    RoutesName.splash: (context) => SplashScreen(),
    RoutesName.onboarding: (context) => OnboardingScreen(),
    RoutesName.dashboard: (context) => Dashboard(),
  };
}
