import 'package:flutter/material.dart';

class LoadingWithText extends StatelessWidget {
  const LoadingWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 22,
      width: 22,
      child: CircularProgressIndicator(
          backgroundColor: Colors.white,
          valueColor: AlwaysStoppedAnimation<Color>(Colors.black)),
    );
  }
}
