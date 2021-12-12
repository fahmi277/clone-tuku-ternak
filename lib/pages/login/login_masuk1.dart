// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:clone_tuku_ternak/pages/dashboard/dashboard.dart';
import 'package:clone_tuku_ternak/pages/registrasi/register_screen.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/components/Custom_Text.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LoginMasuk1 extends StatelessWidget {
  const LoginMasuk1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 19.w),
            child: SizedBox(
              height: 64.h,
              width: 64.h,
              child: CircleAvatar(
                backgroundColor: DataColors.primer,
                child: SizedBox(
                    height: 34.h,
                    width: 34.h,
                    child: Image.asset(ImageData.logoWhite)),
              ),
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 14.w, right: 14.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Login untuk Tuku Ternak",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomText(
                    text: "Masukan email anda anda untuk masuk ke",
                    fontSize: 14.sp),
                SizedBox(
                  height: 10.h,
                ),
                CustomText(text: "halaman tuku ternak.", fontSize: 14.sp),
                SizedBox(
                  height: 45.h,
                ),
                CustomText(
                  text: "Email",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  height: 48.h,
                  // width: 289.w,
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(14.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                CustomText(
                  text: "Password",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 8.h,
                ),
                SizedBox(
                  height: 48.h,
                  // width: 289.w,
                  child: TextField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(14.h),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10.0.r),
                        ),
                        filled: true,
                        hintStyle: TextStyle(color: Colors.grey[800]),
                        fillColor: Colors.white70),
                  ),
                ),
                SizedBox(
                  height: 72.h,
                ),
                Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 42.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: DataColors.primer),
                          onPressed: () {
                            print("goto Login");
                            Get.to(() => Dashboard());
                          },
                          child: CustomText(
                            text: "Masuk",
                            fontSize: 14.sp,
                            textColor: Colors.white,
                          )),
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    CustomText(
                      text: "atau",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                      // textColor: Colors.grey,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 42.h,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: DataColors.primer),
                          onPressed: () {
                            print("goto daftar");
                            Get.off(() => RegisterScreen());
                          },
                          child: CustomText(
                            text: "Daftar",
                            fontSize: 14.sp,
                            textColor: Colors.white,
                          )),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
