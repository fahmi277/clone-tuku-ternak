// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:clone_tuku_ternak/pages/login/login_masuk1.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/components/Custom_Text.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({Key? key}) : super(key: key);

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
                  text: "Verifikasi Nomor Telepon",
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                ),
                SizedBox(
                  height: 4.h,
                ),
                CustomText(
                    text: "Masukkan kode verifikasi yang dikirimakan",
                    fontSize: 14.sp),
                SizedBox(
                  height: 4.h,
                ),
                CustomText(text: "melalui SMS", fontSize: 14.sp),
                SizedBox(
                  height: 67.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SizedBox(
                      height: 48.w,
                      width: 48.w,
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                      height: 48.w,
                      width: 48.w,
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                      height: 48.w,
                      width: 48.w,
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                      height: 48.w,
                      width: 48.w,
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                      height: 48.w,
                      width: 48.w,
                      child: TextField(
                        keyboardType: TextInputType.number,
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
                  ],
                ),
                SizedBox(
                  height: 4.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 22.w),
                      child: CustomText(
                        text: "Sisa Waktu (60 detik)",
                        fontSize: 14.sp,
                        textColor: Colors.grey,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 24.h,
                ),
                SizedBox(
                  width: double.infinity,
                  height: 42.h,
                  child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: DataColors.primer),
                      onPressed: () {
                        print("goto verifikasi");
                        Get.off(() => LoginMasuk1());
                      },
                      child: CustomText(
                        text: "Verifikasi",
                        fontSize: 14.sp,
                        textColor: Colors.white,
                      )),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: "Tidak Menerima Kode Verifikasi? ",
                      fontSize: 14.sp,
                    ),
                    CustomText(
                      text: "Kirim Ulang Kode",
                      fontSize: 14.sp,
                      textColor: DataColors.primer,
                    )
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
