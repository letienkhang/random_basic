import 'package:get/get.dart';

class RootController extends GetxController {
  var count = 0.obs;
  var isLoading = false.obs;

  @override
  void onInit() {
    isLoading = false.obs;
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() {
    isLoading.value = true;
    Future.delayed(const Duration(milliseconds: 500), () {
      isLoading.value = false;
      count.value++;
    });
  }
}
