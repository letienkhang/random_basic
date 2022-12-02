import 'package:get/get.dart';
import 'package:random_basic/app/main/random_main_logic.dart';

class RandomMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RandomMainLogic());
  }
}
