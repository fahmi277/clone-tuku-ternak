// ignore_for_file: avoid_print

import 'package:clone_tuku_ternak/pages/login/login_masuk.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class LoginDaftar extends StatelessWidget {
  const LoginDaftar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const BackButton(color: Colors.black),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(ImageData.logoPrimer, scale: 1.5),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Registrasi untuk Tuku Ternak",
                      style: GoogleFonts.poppins(
                          fontSize: 14.sp, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Text(
                      "Masukan data anda untuk registrasi Tuku Ternak.",
                      style: GoogleFonts.poppins(
                        fontSize: 12.sp,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(
                      height: 10.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Email",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              fillColor: Colors.white70),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 1.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Password",
                          style: GoogleFonts.poppins(
                            fontSize: 12.sp,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: 2.h,
                        ),
                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              filled: true,
                              hintStyle: TextStyle(color: Colors.grey[800]),
                              fillColor: Colors.white70),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 70.h),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: DataColors.primer),
                          onPressed: () {
                            print("Daftar");
                            // Get.to(() => const LoginDaftar());
                          },
                          child: Text(
                            "Daftar",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      ),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: DataColors.primer),
                          onPressed: () {
                            print("Masuk");
                            Get.off(() => const LoginMasuk());
                          },
                          child: Text(
                            "Masuk",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontSize: 12.sp,
                                fontWeight: FontWeight.bold),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
