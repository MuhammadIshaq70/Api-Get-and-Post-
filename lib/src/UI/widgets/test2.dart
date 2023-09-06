import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'backButton.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          backButton(ontap: () {}),
          Center(
            child: Text(
              'About Us',
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.w700),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 43, right: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Lorem ipsum dolor sit amet consectetur. At orci erat bibendum a et urna malesuada quisque sit. Ut aliquam diam amet et imperdiet odio arcu. In vulputate vitae malesuada tristique ultrices quis sed dignissim. Lectus a non dictum vivamus ullamcorper elementum. Ornare a nisl amet amet adipiscing scelerisque.  ',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Text(
                  'Information',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. At orci erat bibendum a et urna malesuada quisque sit. Ut aliquam diam amet et imperdiet odio arcu. In vulputate vitae malesuada tristique ultrices quis sed dignissim. Lectus a non dictum vivamus ullamcorper elementum. Ornare a nisl amet amet adipiscing scelerisque.  ',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  height: 25.sp,
                ),
                Text(
                  'HEading',
                  style:
                      TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 10.sp,
                ),
                Text(
                  'Lorem ipsum dolor sit amet consectetur. At orci erat bibendum a et urna malesuada quisque sit. Ut aliquam diam amet et imperdiet odio arcu. In vulputate vitae malesuada tristique ultrices quis sed dignissim. Lectus a non dictum vivamus ullamcorper elementum. Ornare a nisl amet amet adipiscing scelerisque.  ',
                  style:
                      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
