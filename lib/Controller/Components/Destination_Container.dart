import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/Controller/Components/Book-Mark-Container.dart';
import 'package:travel_app/Controller/Components/Custom%20Text.dart';
import 'package:travel_app/Controller/Constant/images.dart';
import 'package:travel_app/View/Detail/Detail.dart';

import '../Constant/Colors.dart';


class DestinationContainer extends StatelessWidget {
  String destinationImage;
  String destinationName;
  String rating;
  String locationName;


   DestinationContainer({super.key,
     required this.destinationImage,
     required this.destinationName,
     required this.rating,
     required this.locationName,
   });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailScreen(
          destinationImage: destinationImage,
          destinationName: destinationName,
          locationName: locationName,
          rating: rating,

        )));
      },
      child: Container(
        height: 384.h,
        width: 268.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.grey.shade100,width: 2)
        ),
        child: Center(child:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 286.h,
                  width: 240.w,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child:Image.asset(destinationImage,fit: BoxFit.fill,),

                ),
                Positioned(
                  left: 180.w,top: 15.h,
                  child:Bookmarkcontainer(image: Appimages.bookmark,onTap: (){},),
                ),
              ],
            ),
            SizedBox(height: 10.h,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomtextBold(text: destinationName,fontsize: 20,),
                    Row(
                      children: [
                        Icon(Icons.star,color: Colors.yellow,size: 20,),
                        SizedBox(width: 5.w,),
                        Customtext(text:rating ,fontweight: FontWeight.bold,),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image(image: AssetImage(Appimages.location)),
                        SizedBox(width: 5.w,),
                        Customtext(text:locationName ,color: Colors.grey,)
                      ],
                    ),
                    Container(
                      height: 40.h,
                      width: 80.w,
                      color: Colors.white,
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                            right: 48.w, // Position for the first CircleAvatar
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.purpleAccent,
                              backgroundImage: AssetImage(Appimages.boy2),
                            ),
                          ),
                          Positioned(
                            right: 33.w, // Position for the first CircleAvatar
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.blue,
                              backgroundImage: AssetImage(Appimages.boy),

                            ),
                          ),
                          Positioned(
                            right: 18.w, // Slightly overlap the second CircleAvatar
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.yellow,
                              backgroundImage: AssetImage(Appimages.boy2),
                            ),
                          ),
                          Positioned(
                            right: 0.w, // Last CircleAvatar
                            child: CircleAvatar(
                              radius: 18,
                              child: Center(child: Customtext(text: '+50',fontweight: FontWeight.bold,),),
                            ),
                          ),
                        ],),
                    )
                  ],),
              ],),
            )
          ],),),
      ),
    );
  }
}
