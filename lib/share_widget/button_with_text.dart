import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:random_basic/common/style_text.dart';
import 'package:random_basic/share_widget/loading_with_text.dart';

class ButtonWithText extends StatelessWidget {
  final Function onTap;
  final String? content;
  final TextStyle? style;
  final bool? isLoading;
  const ButtonWithText(
      {super.key,
      required this.onTap,
      this.content,
      this.style,
      this.isLoading});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          width: Get.width,
          height: 60,
          decoration: BoxDecoration(
            color: Colors.blueAccent,
            border: Border.all(color: Colors.white, width: 2.0),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$content",
                style: style ?? CustomTextStyle.style16WhiteRTextStyle,
              ),
              const SizedBox(
                width: 10,
              ),
              isLoading == true
                  ? const LoadingWithText()
                  : const SizedBox.shrink()
            ],
          ),
        ));
  }
}
