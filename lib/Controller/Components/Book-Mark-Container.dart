import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/Controller/Constant/images.dart';


class Bookmarkcontainer extends StatelessWidget {
  String image;
  Color color;
  double height;
  double width;
  VoidCallback onTap;
   Bookmarkcontainer({super.key,
     required this.image,this.color=Colors.white,required this.onTap,
     this.height=40,
     this.width=40,
   });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: height.h,
        width: width.w,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.1),
          borderRadius: BorderRadius.circular(50),
        ),
        child: ImageIcon(AssetImage(image,),color:color,)
      ),
    );
  }
}
