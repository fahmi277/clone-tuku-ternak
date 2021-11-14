// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:clone_tuku_ternak/pages/login/login.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:clone_tuku_ternak/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';
import 'package:dots_indicator/dots_indicator.dart';

RxInt countIntro = 0.obs;

class IntroPages extends StatefulWidget {
  const IntroPages({Key? key}) : super(key: key);

  @override
  _IntroPagesState createState() => _IntroPagesState();
}

class _IntroPagesState extends State<IntroPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Obx(() {
          return DotsIndicator(
            dotsCount: 3,
            position: countIntro.value.toDouble(),
            decorator: DotsDecorator(
              size: const Size.square(9.0),
              activeSize: const Size(18.0, 9.0),
              activeShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
          );
        }),
        body: _ListIntro());
  }
}

Widget _ListIntro() {
  return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: InkWell(
              onTap: () {
                countIntro.value++;
                if (countIntro > 2) {
                  countIntro.value = 0;
                }
              },
              child: Obx(() {
                if (countIntro.value == 0) {
                  return Column(
                    children: [
                      Image.asset(
                        ImageData.swip1,
                        scale: 4.5,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        StringData.swipe1Title,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        StringData.swipe1Subtitle,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                }
                if (countIntro.value == 1) {
                  return Column(
                    children: [
                      Image.asset(
                        ImageData.swip2,
                        scale: 4.5,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        StringData.swipe2Title,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        StringData.swipe2Subtitle,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  );
                } else {
                  return Column(
                    children: [
                      Image.asset(
                        ImageData.swip3,
                        scale: 4.5,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        StringData.swipe3Title,
                        style: GoogleFonts.poppins(
                            color: Colors.black,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 6.h),
                      Text(
                        StringData.swipe3Subtitle,
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(height: 4.h),
                      ElevatedButton(
                        onPressed: () {
                          print("MUlai Sekarang");
                          Get.off(() => Login());
                        },
                        child: Text(
                          "Mulai Sekarang",
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 10.sp,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ],
                  );
                }
              }),
            )),
      ],
    ),
  );
}
