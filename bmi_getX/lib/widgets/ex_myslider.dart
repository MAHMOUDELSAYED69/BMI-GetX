import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../components/colors.dart';
import '../components/string.dart';

class MySlider extends StatelessWidget {
  const MySlider(
      {super.key,
      this.title,
      this.child,
      this.color,
      this.h,
      this.titleSlider,
      this.sliderFun, this.myValue});
  final String? title;
  final String? titleSlider;
  final Widget? child;
  final Color? color;
  final double? h;
  final double? myValue;
  final dynamic sliderFun;
  @override
  Widget build(BuildContext context) {
    double h1 = Get.height;
    return Container(
      height: h ?? h1 * 0.25,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment:CrossAxisAlignment.end,
            children: [
              Text(
                titleSlider ?? "158",
                style: TextStyle(
                    fontSize: 48,
                    color: MyColor.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 27,
                child: Text(
                  MyTitles.cm,
                  style: TextStyle(color: MyColor.unactive, fontSize: 20),
                ),
              ),
            ],
          ),
          Slider(
            inactiveColor: MyColor.unactive,
            activeColor: MyColor.pink,
            min: 80,
            max: 210,
            value:myValue ?? 168.0,
            onChanged: sliderFun,
          )
        ],
      ),
    );
  }
}
