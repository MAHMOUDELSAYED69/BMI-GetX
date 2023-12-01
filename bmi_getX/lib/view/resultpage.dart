import 'package:BMI/components/colors.dart';
import 'package:BMI/components/string.dart';
import 'package:BMI/controller/controller.dart';
import 'package:BMI/widgets/ex_bottom.dart';
import 'package:BMI/widgets/ex_res_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class ResultPage extends StatelessWidget {
  const ResultPage({super.key});
  @override
  Widget build(BuildContext context) {
    MyController ctrl = Get.find();
    return Scaffold(
      backgroundColor: MyColor.bg,
      appBar: AppBar(
        title: Text(MyTitles.bmiResult, style: const TextStyle(fontSize: 24,color: Colors.white)),
        backgroundColor: MyColor.card,
        centerTitle: true,
      ),
      body: Align(
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child:Column(
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Row(children: [
                          Text(MyTitles.yourResult,
                              style: TextStyle(
                                  fontSize: 52,
                                  color: MyColor.white,
                                  fontWeight: FontWeight.bold)),
                        ]),
                        MyResCard(
                          titleAvrage: "Normal BMI Range: \n 18.5-25 Kg/m2",
                          title: ctrl.bmiTitle,
                          titleRes: ctrl.bmiSum.toStringAsFixed(1),
                          titleContext: ctrl.bmiContext,
                        ),
                      ],
                    ),
                  ),
                  MyButtom(
                    onPressed: () {
                      Get.back();
                    },
                    title: MyTitles.reCalculate,
                  )
                ],
              )),
        ),
      
    );
  }
}
