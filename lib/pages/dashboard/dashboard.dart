// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:clone_tuku_ternak/utils/components/custom_text.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'details_item.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 53.h, left: 10.w, right: 10.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Tuku Ternak",
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  Row(
                    children: [
                      Icon(Icons.note_add),
                      SizedBox(
                        width: 10.w,
                      ),
                      Icon(Icons.notifications),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 25.h,
              ),
              SizedBox(
                height: 48.h,
                // width: 289.w,
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search),
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
                height: 22.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Kategori",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
              SizedBox(height: 12.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 9.h, horizontal: 11.w),
                      child: Row(
                        children: [
                          Image.asset(ImageData.cattle),
                          SizedBox(
                            width: 12.w,
                          ),
                          CustomText(
                            text: "Ternak",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 48.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 9.h, horizontal: 11.w),
                      child: Row(
                        children: [
                          Image.asset(ImageData.hand),
                          SizedBox(
                            width: 12.w,
                          ),
                          CustomText(
                            text: "Alat-alat",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 16.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 48.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 9.h, horizontal: 11.w),
                      child: Row(
                        children: [
                          Image.asset(ImageData.leaf),
                          SizedBox(
                            width: 12.w,
                          ),
                          CustomText(
                            text: "Pakan",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 48.h,
                    width: 168.w,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(10.0.r),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 9.h, horizontal: 11.w),
                      child: Row(
                        children: [
                          Image.asset(ImageData.medicine),
                          SizedBox(
                            width: 12.w,
                          ),
                          CustomText(
                            text: "Obat",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 23.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Rekomendasi Ternak",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
              GridView.count(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                childAspectRatio:
                    174.w / 225.h, // ukuran setiap card yang ada di gridview
                // 1.sw / (1.sh / 1.6.h),

                crossAxisCount: 2,
                children: <Widget>[
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                  RekomendasiHewan(),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RekomendasiHewan extends StatelessWidget {
  RekomendasiHewan({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(() => DetailsItem());
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Image.asset(
                // remove width , menggunakan
                ImageData.cow,
                height: 138.h,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 8.h, left: 13.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                      text: "Sapi Limousin",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold),
                  SizedBox(
                    height: 8.h,
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.calendar_today,
                        size: 12.sp,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      CustomText(
                          text: "60 Bulan",
                          fontSize: 12.sp,
                          textColor: Colors.grey,
                          fontWeight: FontWeight.bold),
                      SizedBox(
                        width: 8.w,
                      ),
                      Icon(
                        Icons.badge,
                        size: 12.sp,
                      ),
                      SizedBox(
                        width: 4.w,
                      ),
                      CustomText(
                          text: "120 Kg",
                          fontSize: 12.sp,
                          textColor: Colors.grey,
                          fontWeight: FontWeight.bold),
                    ],
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  CustomText(
                      text: "Rp. 43.000.000,00",
                      fontSize: 14.sp,
                      textColor: Colors.greenAccent,
                      fontWeight: FontWeight.bold),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
