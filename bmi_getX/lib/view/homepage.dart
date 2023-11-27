import 'package:BMI/components/colors.dart';
import 'package:BMI/components/icons.dart';
import 'package:BMI/components/string.dart';
import 'package:BMI/controller/controller.dart';
import 'package:BMI/widgets/ex_mycard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/ex_bottom.dart';
import '../widgets/ex_mycounter.dart';
import '../widgets/ex_myslider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColor.bg,
        appBar: AppBar(
          title: Text(MyTitles.bmiCalculator,
              style: const TextStyle(fontSize: 24)),
          backgroundColor: MyColor.card,
          centerTitle: true,
        ),
        body: GetBuilder<MyController>(
            init: MyController(),
            builder: (ctrl) {
              return Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          margin:
                              const EdgeInsets.only(top: 8, right: 8, left: 8),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Expanded(
                                    child: MyCard(
                                      color: ctrl.changeColorMale,
                                      cardFun: () {
                                        ctrl.colorMale();
                                        ctrl.isMale = true;
                                      },
                                      icon: MyIcons.male,
                                      title: MyTitles.male,
                                    ),
                                  ),
                                  Expanded(
                                    child: MyCard(
                                      color: ctrl.changeColorFemale,
                                      cardFun: () {
                                        ctrl.colorFemale();
                                        ctrl.isfemale = true;
                                      },
                                      icon: MyIcons.female,
                                      title: MyTitles.female,
                                    ),
                                  )
                                ],
                              ),
                              MySlider(
                                myValue: ctrl.sliderValueCount,
                                title: MyTitles.height,
                                titleSlider:
                                    ctrl.sliderValueCount.toStringAsFixed(0),
                                sliderFun: (newvalue) {
                                  ctrl.sliderValueCount = newvalue;
                                  ctrl.sliderValue();
                                },
                              ),
                              Row(
                                children: [
                                  Expanded(
                                      child: MyCounter(
                                    heroTag1: 1,
                                    title: MyTitles.weight,
                                    titleCounter: "${ctrl.counterWeight}",
                                    counterFunAdd: () {
                                      ctrl.incrementWeight();
                                    },
                                    counterFunRemove: () {
                                      ctrl.decrementWeight();
                                    },
                                  )),
                                  Expanded(
                                      child: MyCounter(
                                    heroTag2: 2,
                                    title: MyTitles.age,
                                    titleCounter: "${ctrl.counterAge}",
                                    counterFunAdd: () {
                                      ctrl.incrementAge();
                                    },
                                    counterFunRemove: () {
                                      ctrl.decrementAge();
                                    },
                                  ))
                                ],
                              )
                            ],
                          )),
                      MyButtom(
                        onPressed: () {
                          ctrl.isMale == true || ctrl.isfemale == true
                              ? Get.toNamed("/result")
                              : Get.defaultDialog(
                                  barrierDismissible: true,
                                  backgroundColor: MyColor.card,
                                  title: "warning",
                                  titleStyle: TextStyle(
                                      color: MyColor.red,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                  content: Column(
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 10),
                                        child: Icon(Icons.cancel_sharp,
                                            size: 50, color: MyColor.red),
                                      ),
                                      Text("Please choose you're Gender",
                                          style: TextStyle(
                                              color: MyColor.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w600))
                                    ],
                                  ));
                        },
                        title: MyTitles.calculate,
                      )
                    ],
                  ),
                ),
              );
            }));
  }
}
