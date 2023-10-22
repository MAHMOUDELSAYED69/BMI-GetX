import 'package:BMI/controller/controller.dart';
import 'package:get/get.dart';

class MyBinding implements Bindings{
  @override
  void dependencies() {
    Get.put(MyController(),permanent: true);
  }

}