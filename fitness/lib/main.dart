import 'package:fitness/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'theme/theme.dart';
// import 'screens/app_shell.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  statusBarColor: Colors.transparent,
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.dark,
  ));

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  runApp(const IronVaultApp());
}

class IronVaultApp extends StatelessWidget{
  const IronVaultApp({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'IronVault',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.dark,
      home: const AppShell(),
    );
  }
}

/*class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage()
    );
  }
}
*/