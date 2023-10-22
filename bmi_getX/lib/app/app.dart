import 'package:BMI/utils/binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../view/homepage.dart';
import '../view/resultpage.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //home: const ResultPage(),
      initialRoute: "/",
      initialBinding: MyBinding(),
      getPages: [
        GetPage(name: "/", page: () => const HomePage()),
        GetPage(name: "/result", page: () => const ResultPage()),
      ],
    );
  }
}
