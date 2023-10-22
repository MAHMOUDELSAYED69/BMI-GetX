import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/colors.dart';
import '../components/icons.dart';

class MyCounter extends StatelessWidget {
  const MyCounter(
      {super.key,
      this.title,
      this.child,
      this.color,
      this.h,
      this.titleCounter,
      this.counterFunAdd,
      this.counterFunRemove,
      this.heroTag1,
      this.heroTag2});
  final String? title;
  final String? titleCounter;
  final Widget? child;
  final Color? color;
  final double? h;
  final dynamic counterFunAdd;
  final dynamic counterFunRemove;
  final dynamic heroTag1;
  final dynamic heroTag2;
  @override
  Widget build(BuildContext context) {
    double h1 = Get.height;
    return Container(
      height: h ?? h1 * 0.23,
      width: double.infinity,
      decoration: BoxDecoration(
          color: color ?? MyColor.card,
          borderRadius: BorderRadius.circular(15)),
      margin: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title ?? "NO TITLE",
            style: TextStyle(fontSize: 28, color: MyColor.grey),
          ),
          Text(
            titleCounter ?? "158",
            style: TextStyle(
                fontSize: 38,
                color: MyColor.white,
                fontWeight: FontWeight.bold),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            FloatingActionButton(
                heroTag: heroTag1,
                backgroundColor: color ?? MyColor.grey,
                onPressed: counterFunAdd,
                child: Icon(
                  MyIcons.add,
                  size: 35,
                )),
            const Padding(padding: EdgeInsets.symmetric(horizontal: 7)),
            FloatingActionButton(
                heroTag: heroTag2,
                backgroundColor: color ?? MyColor.grey,
                onPressed: counterFunRemove,
                child: Icon(
                  MyIcons.remove,
                  size: 35,
                )),
          ]),
        ],
      ),
    );
  }
}
