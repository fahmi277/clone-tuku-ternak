// ignore_for_file: avoid_print, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/components/custom_text.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

import 'details_item_pembayaran1.dart';

class DetailsItem extends StatelessWidget {
  const DetailsItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 306.h,
                  width: 375.w,
                  child: Image.asset(
                    ImageData.cow,
                    fit: BoxFit.cover,
                  )),
              SizedBox(
                height: 23.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Sapi Limousin",
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.grey,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        CustomText(
                          text: "4.0 ( 20 orang )",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        CustomText(
                          text: "Wahyu Farm Sejahtera",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Icon(
                          Icons.location_city,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        CustomText(
                          text: "Ciawi, bogor, Jawa Barat",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      children: [
                        Icon(
                          Icons.call,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4.w,
                        ),
                        CustomText(
                          text: "(021) 12345",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(height: 8.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 48.h,
                              width: 48.h,
                              decoration: BoxDecoration(
                                color: DataColors.primer,
                                border: Border.all(
                                  color: DataColors.primer,
                                ),
                                borderRadius: BorderRadius.circular(6.0.r),
                              ),
                              child: Center(
                                child: Icon(
                                  Icons.calendar_today,
                                  color: DataColors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            CustomText(
                              text: "40 Bulan",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 48.h,
                              width: 48.h,
                              decoration: BoxDecoration(
                                color: DataColors.primer,
                                border: Border.all(
                                  color: DataColors.primer,
                                ),
                                borderRadius: BorderRadius.circular(6.0.r),
                              ),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.trophy,
                                  color: DataColors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            CustomText(
                              text: "100 Kg",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 48.h,
                              width: 48.h,
                              decoration: BoxDecoration(
                                color: DataColors.primer,
                                border: Border.all(
                                  color: DataColors.primer,
                                ),
                                borderRadius: BorderRadius.circular(6.0.r),
                              ),
                              child: Center(
                                child: FaIcon(
                                  FontAwesomeIcons.venusMars,
                                  color: DataColors.white,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            CustomText(
                              text: "Betina",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 21.h),
                    CustomText(
                      text: "Infromasi",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(height: 21.h),
                    AutoSizeText(
                      'Sapi limousin merupakan tipe sapi potong dengan perototan yang lebih baik dari sapi simmental. Sapi limousin memiliki bulu berwarna coklat tua kecuali di sekitar ambing berwarna putih serta lutut kebawah dan sekitar mata berwarna lebih muda.',
                      style: TextStyle(fontSize: 12.sp),
                      maxLines: 5,
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: "Harga",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    CustomText(
                      text: "Rp. 26.000.000,00",
                      fontSize: 16.sp,
                      textColor: Colors.greenAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 48.h,
                      width: 48.h,
                      decoration: BoxDecoration(
                        color: DataColors.primer,
                        border: Border.all(
                          color: DataColors.primer,
                        ),
                        borderRadius: BorderRadius.circular(6.0.r),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.message,
                          color: DataColors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Container(
                      height: 48.h,
                      width: 48.h,
                      decoration: BoxDecoration(
                        color: DataColors.primer,
                        border: Border.all(
                          color: DataColors.primer,
                        ),
                        borderRadius: BorderRadius.circular(6.0.r),
                      ),
                      child: Center(
                        child: FaIcon(
                          FontAwesomeIcons.shoppingBag,
                          color: DataColors.white,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 9.w,
                    ),
                    Expanded(
                      child: SizedBox(
                        // width: double.maxFinite,
                        height: 48.h,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: DataColors.primer),
                            onPressed: () {
                              print("Tukuo Bos ojo ndelok tok");
                              Get.to(() => DetailsPembayaran());
                            },
                            child: CustomText(
                              text: "Beli Sekarang",
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              textColor: Colors.white,
                            )),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
