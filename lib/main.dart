import 'package:assignment_10/App/Route/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Registration App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: AppRoute.initialRoute,
      getPages: AppRoute.routes,
    );
  }
}
