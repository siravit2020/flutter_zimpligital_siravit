import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_zimpligital_siravit/core/routes/app_pages.dart';
import 'package:flutter_zimpligital_siravit/core/themes/theme.dart';
import 'package:get/get.dart';

Future<void> main() async {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      defaultTransition: Transition.fade,
      theme: defaultTheme(context),
      themeMode: ThemeMode.light,
      initialRoute: AppPages.initial,
      getPages: AppPages.routes,
    );
  }
}
