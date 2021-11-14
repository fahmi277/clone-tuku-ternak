// ignore_for_file: avoid_print

import 'package:clone_tuku_ternak/pages/login/login_masuk.dart';
import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:clone_tuku_ternak/utils/images.dart';
import 'package:clone_tuku_ternak/utils/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Row(
                children: [
                  Image.asset(
                    ImageData.logoPrimer,
                    scale: 2,
                  ),
                  SizedBox(
                    width: 1.w,
                  ),
                  Text(
                    "Tuku Ternak",
                    style: GoogleFonts.poppins(
                        fontSize: 10.sp, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.h),
                child: Align(
                    alignment: Alignment.topCenter,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        ImageData.loginHome,
                        scale: 5,
                        fit: BoxFit.cover,
                      ),
                    )),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style:
                          ElevatedButton.styleFrom(primary: DataColors.primer),
                      onPressed: () {
                        print("Masuk");
                        Get.to(() => const LoginMasuk());
                      },
                      child: Text(
                        "Mulai Sekarang",
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        print("Masuk");
                        // Get.off(() => Login());
                      },
                      child: Text(
                        "Daftar Sekarang",
                        style: GoogleFonts.poppins(
                          color: Colors.black,
                          fontSize: 12.sp,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                      ),
                      onPressed: () {
                        print("Masuk");
                        // Get.off(() => Login());
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            ImageData.logoGoogle,
                            scale: 6,
                          ),
                          SizedBox(
                            width: 4.w,
                          ),
                          Text(
                            "Masuk dengan Google",
                            style: GoogleFonts.poppins(
                              color: Colors.black,
                              fontSize: 12.sp,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                  Text(
                    StringData.loginSlogan,
                    style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 10.sp,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 5.h,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
