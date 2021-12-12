// ignore_for_file: prefer_const_constructors

import 'package:clone_tuku_ternak/pages/intro/swipper/swipper.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: DataColors.primer,
      body: InkWell(
        onTap: () {
          Get.off(() => Swipper());
        },
        child: Center(
          child: SizedBox(
              height: 81.82,
              width: 71,
              child: Image.asset(ImageData.logoWhite)),
        ),
      ),
    );
  }
}
