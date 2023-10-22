import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/colors.dart';

class MyButtom extends StatelessWidget {
  const MyButtom({super.key, this.title, this.child, this.color, this.h, required this.onPressed});
 final String? title;
  final Widget? child;
  final Color? color;
  final double? h;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    double h1 = Get.height;
    return Container(
      margin: const EdgeInsets.only(top: 10),
      height: h ?? h1*0.08,
      width: double.infinity,
      color: MyColor.pink,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: MyColor.pink,),
        onPressed: onPressed, child: Text(title ?? "NO TITLE",style: const TextStyle(fontSize: 28),)),
    );
  }
}