
import 'package:flutter/material.dart' show Color;
import 'package:BMI/components/colors.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  RxInt counterWeight = 60.obs;
  RxInt counterAge = 25.obs;
  RxDouble sliderValueCount = 168.0.obs;
  void incrementWeight() {
    counterWeight++;
    // PrintConsole.logConole("weight++ $counterWeight");
  }

  void decrementWeight() {
    if (counterWeight.value != 10) {
      counterWeight--;
    }
    // PrintConsole.logConole("weight-- $counterWeight");
  }

  void incrementAge() {
    if (counterAge.value != 110) {
      counterAge++;
    }
    // PrintConsole.logConole("Age++ $counterAge");
  }

  void decrementAge() {
    if (counterAge.value != 19) {
      counterAge--;
    }

    // PrintConsole.logConole("Age-- $counterAge");
  }

  Color? changeColorMale;
  Color? changeColorFemale;
  void colorMale() {
    changeColorMale = MyColor.pink;
    changeColorFemale = MyColor.card;
    // PrintConsole.logConole("colorMale");
    update();
  }

  void colorFemale() {
    changeColorFemale = MyColor.pink;
    changeColorMale = MyColor.card;
    // PrintConsole.logConole("colorFemale");
    update();
  }

  double get bmiSum =>
      counterWeight.value /
      ((sliderValueCount.value / 100) * (sliderValueCount.value / 100));
  String get bmiTitle {
    if (bmiSum < 18.5) {
      return 'Underweight';
    } else if (bmiSum >= 18.5 && bmiSum < 25) {
      return 'Normal weight';
    } else if (bmiSum >= 25 && bmiSum < 30) {
      return 'Overweight';
    } else {
      return 'Obese';
    }
  }

  String get bmiContext {
    if (bmiSum < 18.5) {
      return "you're in the underweight range";
    } else if (bmiSum >= 18.5 && bmiSum < 25) {
      return "You have a normal body weight.\n Good job!";
    } else if (bmiSum >= 25 && bmiSum < 30) {
      return "you're in the overweight range.";
    } else {
      return "you're in the obese range.";
    }
  }

  Color get bmiColor {
    if (bmiSum < 18.5) {
      return MyColor.yellow;
    } else if (bmiSum >= 18.5 && bmiSum < 25) {
      return MyColor.green;
    } else if (bmiSum >= 25 && bmiSum < 30) {
      return MyColor.yellow;
    } else {
      return MyColor.red;
    }
  }
}
