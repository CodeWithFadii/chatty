import 'package:chatty/config/routes/routes_name.dart';
import 'package:chatty/screens/onboarding/onboarding1_screen.dart';
import 'package:chatty/screens/onboarding/splash_screen.dart';

import '../../screens/onboarding/onboarding2_screen.dart';

class Routes {
  static final routes = {
    RoutesName.splash: (context) => SplashScreen(),
    RoutesName.onboarding1: (context) => Onboarding1Screen(),
    RoutesName.onboarding2: (context) => Onboarding2Screen(),
  };
}
