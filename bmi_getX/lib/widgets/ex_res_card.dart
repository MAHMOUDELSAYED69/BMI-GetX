import 'package:BMI/components/colors.dart';
import 'package:BMI/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyResCard extends StatelessWidget {
  const MyResCard({
    super.key,
    this.title,
    this.child,
    this.color,
    this.h,
    this.titleContext,
    this.titleRes, this.titleAvrage,
  });
  final String? title;
  final String? titleContext;
  final String? titleRes;
  final String? titleAvrage;
  final Widget? child;
  final Color? color;
  final double? h;
  @override
  Widget build(BuildContext context) {
    MyController ctrl =Get.find();
    double h1 = Get.height;
    return Container(
      height: h ?? h1 * 0.6,
      width: double.infinity,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color ?? MyColor.card,
          border: Border.all(width: 2, color:ctrl.bmiColor),
          borderRadius: BorderRadius.circular(10)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title ?? "NO TITLE",
            style: TextStyle(
                fontSize: 28,
                color: ctrl.bmiColor,
                fontWeight: FontWeight.bold),
          ),
          Text(
            titleRes ?? "NO TITLE",
            style: TextStyle(
                fontSize: 90,
                color: ctrl.bmiColor,
                fontWeight: FontWeight.w900),
          ),
          Text(
            titleAvrage ?? "NO TITLE",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 38,
                color: MyColor.white,
                fontWeight: FontWeight.w900),
          ),
          Text(
            titleContext ?? "NO TITLE",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: MyColor.white,fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
