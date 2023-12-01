import 'package:flutter/material.dart' show Color;
import 'package:BMI/components/colors.dart';
import 'package:get/get.dart';

class MyController extends GetxController {
  int counterWeight = 60;
  int counterAge = 25;
  bool isMale = false;
  bool isfemale = false;
  double sliderValueCount = 168.0;
  void sliderValue() {
    sliderValueCount;
    update();
  }

  void incrementWeight() {
    counterWeight++;
    update();
    // PrintConsole.logConole("weight++ $counterWeight");
  }

  void decrementWeight() {
    if (counterWeight != 20) {
      counterWeight--;
      update();
    }
    // PrintConsole.logConole("weight-- $counterWeight");
  }

  void incrementAge() {
    if (counterAge != 110) {
      counterAge++;
      update();
    }
    // PrintConsole.logConole("Age++ $counterAge");
  }

  void decrementAge() {
    if (counterAge != 19) {
      counterAge--;
      update();
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
      counterWeight / ((sliderValueCount / 100) * (sliderValueCount / 100));


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
