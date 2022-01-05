import 'package:get/get.dart';
import 'package:vm/controller.dart';

class Binding extends Bindings{
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(() => HomeController());
  }
  
}