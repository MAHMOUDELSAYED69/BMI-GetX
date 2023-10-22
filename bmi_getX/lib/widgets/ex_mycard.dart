import 'package:BMI/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyCard extends StatelessWidget {
  const MyCard(
      {super.key,
      this.title,
      this.icon,
      this.iconSize,
      this.child,
      this.color,
      this.h,
      required this.cardFun});
  final String? title;
  final IconData? icon;
  final double? iconSize;
  final Widget? child;
  final Color? color;
  final double? h;
  final VoidCallback cardFun;
  @override
  Widget build(BuildContext context) {
    double h1 = Get.height;
    return InkWell(
      onTap: cardFun,
      child: Container(
          height: h ?? h1 * 0.23,
          width: double.infinity,
          decoration: BoxDecoration(
              color: color ?? MyColor.card,
              borderRadius: BorderRadius.circular(15)),
          margin: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: iconSize ?? 100, color: MyColor.white),
              Text(
                title ?? "NO TITLE",
                style: TextStyle(fontSize: 24, color: MyColor.grey),
              ),
            ],
          )),
    );
  }
}

