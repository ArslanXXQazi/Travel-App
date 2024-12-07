
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/Controller/Components/Custom%20Text.dart';

class CustomButton extends StatelessWidget {
  double height;
  double width;
  double bordercircular;
  String text;
  Color color;
  VoidCallback ontab;
  CustomButton({super.key,
    required this.text,
    required this.ontab,
    this.height=56,
    this.width=335,
    this.bordercircular=20,
    this.color=Colors.blue,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontab,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(bordercircular),
        ),
        child: Center(child: Customtext(text: text,color: Colors.white,fontweight: FontWeight.bold,fontsize: 18.sp,),),
      ),
    );
  }
}