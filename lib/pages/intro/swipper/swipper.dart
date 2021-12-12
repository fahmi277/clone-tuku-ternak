// ignore_for_file: prefer_const_constructors, must_be_immutable, avoid_print

import 'package:clone_tuku_ternak/pages/intro/swipper/bottom_indicator.dart';
import 'package:clone_tuku_ternak/pages/login/login_screen.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/components/custom_text.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Swipper extends StatelessWidget {
  const Swipper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = PageController(initialPage: 0);
    return Scaffold(
        body: PageView(
      controller: controller,
      children: [
        SwipperWidget(
          wrapHeading: Wrap(
            children: [
              CustomText(text: "Lebih dari 300 Ternak yang", fontSize: 24),
              CustomText(text: "dipasarkan setiap harinya", fontSize: 24),
            ],
          ),
          wrapSubHeading: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  CustomText(
                      text: "Tukuternak telah berkerja sama dengan",
                      fontSize: 16),
                  CustomText(
                      text: "penjual-penjual di seluruh Indonesia untuk",
                      fontSize: 16),
                  CustomText(text: "memasarkan Ternak mereka", fontSize: 16),
                ],
              ),
              SizedBox(height: 90.h),
              BottomIndicator(index: 0)
            ],
          ),
          imageAsset: ImageData.swip1,
        ),
        SwipperWidget(
          wrapHeading: Wrap(
            alignment: WrapAlignment.center,
            children: [
              CustomText(text: "Mudah dalam Pembelian dan", fontSize: 24),
              CustomText(text: "Pembayaran", fontSize: 24),
            ],
          ),
          wrapSubHeading: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  CustomText(
                      text: "Kami menawarkan fitur kemudahan dalam",
                      fontSize: 16),
                  CustomText(
                      text: "bertransaksi jual beli dan kemudahan pembayaran",
                      fontSize: 16),
                ],
              ),
              SizedBox(height: 90.h),
              BottomIndicator(index: 1)
            ],
          ),
          imageAsset: ImageData.swip2,
        ),
        SwipperWidget(
          wrapHeading: Wrap(
            alignment: WrapAlignment.center,
            children: [
              CustomText(text: "Ternak Berkualitas dan", fontSize: 24),
              CustomText(text: "Harga Terjangkau", fontSize: 24),
            ],
          ),
          wrapSubHeading: Column(
            children: [
              Wrap(
                alignment: WrapAlignment.center,
                children: [
                  CustomText(
                      text: "Kami menjual Ternak berkualitas dan terbaik",
                      fontSize: 16),
                  CustomText(text: "tentunya agar Anda puas", fontSize: 16),
                ],
              ),
              SizedBox(
                height: 101.h,
              ),
              SizedBox(
                width: 345.w,
                height: 42.h,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: DataColors.primer),
                    onPressed: () {
                      print("goto Login");
                      Get.to(() => LoginScreen());
                    },
                    child: CustomText(
                      text: "Mulai Sekarang",
                      fontSize: 14.sp,
                      textColor: Colors.white,
                    )),
              )
            ],
          ),
          imageAsset: ImageData.swip3,
        ),
      ],
    ));
  }
}

class SwipperWidget extends StatelessWidget {
  Widget wrapHeading;
  Widget wrapSubHeading;
  String imageAsset;
  SwipperWidget({
    Key? key,
    required this.wrapHeading,
    required this.wrapSubHeading,
    required this.imageAsset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 44.h),
      child: Column(
        children: [
          // SizedBox(height: ,)
          Padding(
            padding: EdgeInsets.only(left: 297.w),
            child: CustomText(
              text: "Skip",
              fontSize: 16.sp,
              textColor: DataColors.primer,
            ),
          ),
          SizedBox(
            height: 109.h,
          ),
          Center(
            child: SizedBox(
                width: 300.h, height: 168.78.w, child: Image.asset(imageAsset)),
          ),
          SizedBox(height: 116.2.h),
          wrapHeading,
          SizedBox(height: 32.h),
          wrapSubHeading,
        ],
      ),
    );
  }
}
