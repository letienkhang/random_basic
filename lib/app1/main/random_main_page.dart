import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:random_basic/common/style_text.dart';

class RandomMainPage extends StatelessWidget {
  const RandomMainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.1,
            ),
            Row(
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
            const Align(
              alignment: Alignment.center,
              child: Text(
                '55',
                style: CustomTextStyle.nameOfTextStyle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
