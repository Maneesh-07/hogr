import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hogr/routes/pages.dart';
import 'package:hogr/views/core/utils/p.dart';
import 'package:hogr/views/splash/splash_screen.dart';

void main() {
  P.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.INITIAL,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppPages.pages,
      home: const Splash(),
    );
  }
}
