// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:clone_tuku_ternak/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomIndicator extends StatelessWidget {
  int index;
  BottomIndicator({Key? key,required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 28.w,
          height: 4.h,
          decoration: BoxDecoration(
            color: index == 0 ? DataColors.primer :DataColors.primer1,
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //         <--- border radius here
                ),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Container(
          width: 28.w,
          height: 4.h,
          decoration: BoxDecoration(
            color: index == 1 ? DataColors.primer :DataColors.primer1,
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //         <--- border radius here
                ),
          ),
        ),
        SizedBox(
          width: 8.w,
        ),
        Container(
          width: 28.w,
          height: 4.h,
          decoration: BoxDecoration(
            color: index == 2 ? DataColors.primer :DataColors.primer1,
            borderRadius: BorderRadius.all(
                Radius.circular(5.0) //         <--- border radius here
                ),
          ),
        ),
      ],
    );
  }
}
