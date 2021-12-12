// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:auto_size_text/auto_size_text.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/components/custom_text.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class DetailsPembayaran extends StatelessWidget {
  const DetailsPembayaran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        title: CustomText(
          text: "Detail Pembayaran",
          fontSize: 18.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 75.h,
            color: DataColors.primer,
            child: Padding(
              padding: EdgeInsets.only(top: 10.h, left: 10.w, right: 10.w),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 24.h,
                        width: 24.h,
                        child: Icon(
                          Icons.info,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                              text: "Menunggu pembayaran",
                              fontSize: 18.sp,
                              textColor: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                            AutoSizeText(
                              'Sebelum melakukan pembayaran tanyakan terlebih dahulu ke penjual rincian pesanan ',
                              style: TextStyle(
                                  fontSize: 12.sp, color: Colors.white),
                              maxLines: 2,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 9.h,
          ),
          Container(
            color: Colors.white,
            height: 105.h,
            child: Card(
              child: Stack(
                children: [
                  Column(
                    children: [
                      Padding(
                        padding:
                            EdgeInsets.only(top: 9.h, left: 14.w, right: 14.w),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 20.h,
                              width: 20.h,
                              child: Icon(
                                Icons.location_on,
                                color: Colors.red,
                              ),
                            ),
                            SizedBox(
                              width: 16.w,
                            ),
                            CustomText(
                              text: "Alamat Pengiriman",
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 8.h,
                      ),
                      Divider(),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 46.w, top: 53.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomText(
                          text: "M Fahmi Maulana",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Expanded(
                          child: AutoSizeText(
                            'Jalan Hayam Wuruk, Tanjunganom, Nganjuk, Jawa Timurdgsgsdgsgsgsg ',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.grey),
                            maxLines: 1,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            color: Colors.white,
            height: 96.h,
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Pengiriman",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    SizedBox(
                      height: 8.h,
                    ),
                    Divider(
                      thickness: 0.5.w,
                    ),
                    // SizedBox(
                    //   height: 22.h,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Pilih Metode Pengiriman",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        PopupMenuButton(
                          onSelected: (data) {
                            print(data);
                          },
                          child: Row(
                            children: [
                              CustomText(
                                text: "Ambil Sendiri",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                          itemBuilder: (context) {
                            return <PopupMenuEntry<String>>[
                              PopupMenuItem(
                                  child: Text('Ambil Sendiri'),
                                  value: "Ambil Sendiri"),
                              PopupMenuItem(
                                  child: Text('Antar Kurir'),
                                  value: 'Antar Kurir'),
                            ];
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8.h,
          ),
          Container(
            color: Colors.white,
            height: 96.h,
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 15.w, right: 15.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Metode Pembayaran",
                      fontSize: 12.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Pilih Metode Pembayaran",
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        PopupMenuButton(
                          onSelected: (data) {
                            print(data);
                          },
                          child: Row(
                            children: [
                              CustomText(
                                text: "BNI ( Virtual Account )",
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold,
                              ),
                              Icon(Icons.arrow_drop_down),
                            ],
                          ),
                          itemBuilder: (context) {
                            return <PopupMenuEntry<String>>[
                              PopupMenuItem(
                                  child: Text('BNI ( Virtual Account )'),
                                  value: "BNI"),
                              PopupMenuItem(
                                  child: Text('BCA ( Virtual Account )'),
                                  value: "BCA"),
                              PopupMenuItem(
                                  child: Text('BRI ( Virtual Account )'),
                                  value: "BRI"),
                            ];
                          },
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 8.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                              height: 48.h,
                              width: 48.h,
                              child: Image.asset(
                                ImageData.cow,
                                fit: BoxFit.cover,
                              )),
                          SizedBox(
                            width: 12.w,
                          ),
                          CustomText(
                            text: "Sapi Limousin",
                            fontSize: 14.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      Icon(Icons.more_horiz)
                    ],
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Kategori",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: "Hewan Kurban",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "Harga",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: "Rp. 23.000.000,00",
                        fontSize: 14.sp,
                        textColor: Colors.greenAccent,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "No Pesanan",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      CustomText(
                        text: "549872084739",
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Card(
              child: Padding(
                padding: EdgeInsets.only(left: 14.w, right: 14.w, top: 10.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: "Harga Pesanan",
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(
                          text: "Total Pembayaran",
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                        ),
                        CustomText(
                          text: "Rp. 23.000.000,00",
                          fontSize: 14.sp,
                          textColor: Colors.greenAccent,
                          fontWeight: FontWeight.bold,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 13.h,
                    ),
                    Expanded(
                      child: Center(
                        child: SizedBox(
                          width: double.infinity,
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
