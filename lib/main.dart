import 'package:chatty/config/routes/routes.dart';
import 'package:chatty/config/routes/routes_name.dart';
import 'package:chatty/config/themes/app_theme.dart';
import 'package:chatty/core/utils/utils.dart';
import 'package:chatty/providers/dashboard_state_provider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Utils.changeStatusBarColor();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => DashboardStateProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: AppTheme.theme,
          initialRoute: RoutesName.splash,
          routes: Routes.routes,
        );
      },
    );
  }
}
