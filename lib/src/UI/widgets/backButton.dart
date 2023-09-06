import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class backButton extends StatelessWidget {
  backButton({super.key, required this.ontap});
  var ontap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.sp, top: 24.sp),
      child: InkWell(
        onTap: ontap,
        child: Material(
          borderRadius: BorderRadius.circular(8),
          elevation: 3,
          child: Container(
            height: 25.sp,
            width: 25.sp,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(4.sp)),
            child: Padding(
              padding: EdgeInsets.only(left: 4.sp),
              child: Icon(
                Icons.arrow_back_ios,
                size: 16.sp,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
