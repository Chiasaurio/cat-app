import 'package:flutter/material.dart';

import 'modules/cats/_lib.dart';

void main() async {
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // SplashScreenService.preserve(widgetsBinding);
  // Add a delay
  // await Future.delayed(Duration(seconds: 10)); // Adjust the duration as needed

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPageCatsModule(),
    );
  }
}

class SplashScreenService {
  static late WidgetsBinding _widgetsBinding;

  /// Splash screen is being diisplayed
  static bool _splashScreenIsOn = true;

  /// Maintains the splash screen until the method remove() is called
  static void preserve(WidgetsBinding widgetsBinding) {
    _widgetsBinding = widgetsBinding;
    _widgetsBinding.deferFirstFrame();
  }

  /// Removes splashScreen. It only works if the splashScreen is being displayed
  static void remove() {
    if (_splashScreenIsOn) {
      _widgetsBinding.allowFirstFrame();
      _splashScreenIsOn = false;
    }
  }
}
