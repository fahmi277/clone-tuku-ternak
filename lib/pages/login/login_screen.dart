// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/components/Custom_Text.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'login_masuk1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 54.h, left: 15.w, right: 15.w),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 28.h,
                  width: 28.h,
                  child: Image.asset(ImageData.logoPrimer),
                ),
                SizedBox(
                  width: 7.w,
                ),
                CustomText(
                  text: "Tuku Ternak",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                )
              ],
            ),
            SizedBox(
              height: 64.h,
            ),
            Center(
              child: SizedBox(
                  width: 300.h,
                  height: 168.78.w,
                  child: Image.asset(ImageData.loginHome)),
            ),
            SizedBox(
              height: 244.22.h,
            ),
            SizedBox(
              width: 345.w,
              height: 36.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: DataColors.primer),
                  onPressed: () {
                    print("goto masuk");
                    Get.to(() => LoginMasuk1());
                  },
                  child: CustomText(
                    text: "Masuk",
                    fontSize: 14.sp,
                    textColor: Colors.white,
                  )),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: 345.w,
              height: 36.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    print("goto daftar");
                    // Get.to(() => LoginScreen());
                  },
                  child: CustomText(
                    text: "Daftar Sekarang",
                    fontSize: 14.sp,
                    textColor: Colors.black,
                  )),
            ),
            SizedBox(
              height: 16.h,
            ),
            SizedBox(
              width: 345.w,
              height: 36.h,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.white),
                  onPressed: () {
                    print("goto masuk google");
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 18.h,
                        width: 18.h,
                        child: Image.asset(
                          ImageData.logoGoogle,
                        ),
                      ),
                      SizedBox(width: 16.w),
                      CustomText(
                        text: "Masuk dengan Google",
                        fontSize: 14.sp,
                        textColor: Colors.black,
                      ),
                    ],
                  )),
            ),
            SizedBox(
              height: 40.h,
            ),
            AutoSizeText(
              'Dengan masuk atau mendaftar kamu menyetujui ',
              style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            AutoSizeText(
              'Ketentuan Layanan dan Kebijakan Privasi ',
              style: TextStyle(
                  fontSize: 14.sp,
                  color: DataColors.primer,
                  fontWeight: FontWeight.bold),
              maxLines: 1,
            ),
            // Wrap(
            //   direction: Axis.horizontal,
            //   children: [
            //     CustomText(
            //       text: "Dengan masuk atau mendaftar kamu menyetujui",
            //       fontSize: 14.sp,
            //       textColor: Colors.black,
            //     ),
            //     CustomText(
            //       text: " ketentuan",
            //       fontSize: 14.sp,
            //       textColor: DataColors.primer,
            //     ),
            //   ],
            // ),
            // Wrap(
            //   direction: Axis.horizontal,
            //   children: [
            //     CustomText(
            //       text: "Layanan",
            //       fontSize: 14.sp,
            //       textColor: DataColors.primer,
            //     ),
            //     CustomText(
            //       text: " dan ",
            //       fontSize: 14.sp,
            //     ),
            //     CustomText(
            //       text: "Kebijakan Privasi",
            //       fontSize: 14.sp,
            //       textColor: DataColors.primer,
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
