import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/main.dart';

class Customtext extends StatelessWidget {
  String text;
  double fontsize;
  Color color;
  FontWeight fontweight;
  Customtext({super.key,
    required this.text,
    this.fontsize=15,
    this.color=Colors.black,
    this.fontweight=FontWeight.normal

  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: fontsize.sp,
        color: color,
        fontWeight: fontweight
    ),);
  }
}



class CustomtextBold extends StatelessWidget {
  String text;
  double fontsize;
  Color color;
  FontWeight fontweight;
  CustomtextBold({super.key,
    required this.text,
    this.fontsize=30,
    this.color=Colors.black,
    this.fontweight=FontWeight.bold

  });

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
        fontSize: fontsize.sp,
        color: color,
        fontWeight: fontweight
    ),);
  }
}