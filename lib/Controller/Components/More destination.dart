import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/Controller/Constant/images.dart';


class MoreDestination extends StatelessWidget {
  String image;
   MoreDestination({super.key,required this.image,});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.h,
      width: 60.w,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Image.asset(image,fit: BoxFit.fill,),
    );
  }
}
