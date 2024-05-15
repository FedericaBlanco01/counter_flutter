import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/router/app_router.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "My First Flutter App",
      routerConfig: appRouter,
    );
  }
}
