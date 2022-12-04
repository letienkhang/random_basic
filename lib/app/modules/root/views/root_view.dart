import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_basic/app/modules/root/controllers/root_controller.dart';
import 'package:random_basic/common/style_text.dart';
import 'package:random_basic/share_widget/button_with_text.dart';

class RootView extends GetView<RootController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(
              flex: 3,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Icon(
                    Icons.settings,
                    size: 34,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            Expanded(
                flex: 5,
                child: Obx(
                  () => Text(
                    '${controller.count.value}',
                    style: CustomTextStyle.nameOfTextStyle,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  Obx(
                    () => ButtonWithText(
                      onTap: () {
                        controller.increment();
                      },
                      isLoading: controller.isLoading.value,
                      content: 'Random',
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
