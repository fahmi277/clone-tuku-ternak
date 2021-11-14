// ignore_for_file: prefer_const_constructors

import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 1.h, left: 5.w, right: 5.w),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Tuku Ternak",
                            style: GoogleFonts.poppins(
                                fontSize: 18.sp, fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const Icon(Icons.shopping_basket),
                          SizedBox(
                            width: 3.w,
                          ),
                          const Icon(Icons.notification_add)
                        ],
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 8.h,
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: TextField(
                            autocorrect: true,
                            decoration: InputDecoration(
                              hintText: 'Search',
                              prefixIcon: Icon(Icons.search),
                              hintStyle: TextStyle(color: Colors.grey),
                              filled: true,
                              fillColor: Colors.white70,
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12.0)),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0)),
                                borderSide:
                                    BorderSide(color: Colors.blue, width: 2),
                              ),
                            ),
                          )),
                      SizedBox(
                        height: 6.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kategori",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Icon(
                              Icons.more_horiz_outlined,
                              color: DataColors.primer,
                            )
                          ],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: 6.h,
                                  width: 20.h,
                                  child: Card(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Icon(
                                          Icons.air,
                                          color: DataColors.primer,
                                        ),
                                        Text(
                                          "Ternak",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.sp),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                  height: 6.h,
                                  width: 20.h,
                                  child: Card(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Icon(
                                          Icons.air,
                                          color: DataColors.primer,
                                        ),
                                        Text(
                                          "Alat-alat",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.sp),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                  height: 6.h,
                                  width: 20.h,
                                  child: Card(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Icon(
                                          Icons.air,
                                          color: DataColors.primer,
                                        ),
                                        Text(
                                          "Pakan",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.sp),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )),
                              SizedBox(
                                  height: 6.h,
                                  width: 20.h,
                                  child: Card(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 1.w,
                                        ),
                                        Icon(
                                          Icons.air,
                                          color: DataColors.primer,
                                        ),
                                        Text(
                                          "Obat",
                                          style: GoogleFonts.poppins(
                                              fontSize: 14.sp),
                                          textAlign: TextAlign.center,
                                        ),
                                      ],
                                    ),
                                  )),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 6.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rekomendasi Ternak",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Icon(
                              Icons.more_horiz_outlined,
                              color: DataColors.primer,
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      ImageData.goat,
                                      height: 15.h,
                                      width: 80.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Kambing Sanen",
                                          style: GoogleFonts.poppins(
                                              // color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_today,
                                              // color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              "5 Bulan",
                                              style: GoogleFonts.poppins(
                                                // color: Colors.white,
                                                fontSize: 12.sp,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Icon(Icons.scatter_plot
                                                // color: Colors.white,
                                                ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              " 30 Kg",
                                              style: GoogleFonts.poppins(
                                                // color: Colors.white,
                                                fontSize: 12.sp,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    child: Image.asset(
                                      ImageData.cow,
                                      height: 15.h,
                                      width: 80.w,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Sapi Limousin",
                                          style: GoogleFonts.poppins(
                                              // color: Colors.white,
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.bold),
                                          textAlign: TextAlign.center,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.calendar_today,
                                              // color: Colors.white,
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              "40 Bulan",
                                              style: GoogleFonts.poppins(
                                                // color: Colors.white,
                                                fontSize: 12.sp,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Icon(Icons.scatter_plot
                                                // color: Colors.white,
                                                ),
                                            SizedBox(
                                              width: 1.w,
                                            ),
                                            Text(
                                              " 100 Kg",
                                              style: GoogleFonts.poppins(
                                                // color: Colors.white,
                                                fontSize: 12.sp,
                                              ),
                                              textAlign: TextAlign.center,
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 6.h,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Rekomendasi Pakan",
                              style: GoogleFonts.poppins(
                                  fontSize: 12.sp, fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                            ),
                            Icon(
                              Icons.more_horiz_outlined,
                              color: DataColors.primer,
                            )
                          ],
                        ),
                      ),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  child: Image.asset(
                                    ImageData.cow,
                                    height: 15.h,
                                    width: 80.w,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
