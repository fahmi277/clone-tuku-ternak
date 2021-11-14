// ignore_for_file: prefer_const_constructors

import 'package:clone_tuku_ternak/pages/intro/intro_pages.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFF4A4A),
      body: Container(
        color: DataColors.primer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Get.to(() => IntroPages());
              },
              child: AspectRatio(
                aspectRatio: 8 / 2,
                child: Image.asset(ImageData.logoWhite),
              ),
            ),
            SizedBox(height: 1.h),
            Text(
              "Tuku Ternak",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
