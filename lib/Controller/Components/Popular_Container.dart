

import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Constant/linker.dart';
import 'package:travel_app/View/Detail/Detail.dart';

class PopularContainer extends StatelessWidget {
  String image;
  String name;
  String locationName;
  String ratting;
  String price;
   PopularContainer({super.key,
     required this.image,
     required this.name,
     required this.locationName,
     required this.ratting,
     required this.price,
   });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailScreen(
            destinationImage: image,
            destinationName: name,
            rating: ratting,
            locationName: locationName)));
      },
      child: Container(
        height: 243.h,
        width: 161.w,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade100,width: 2)
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 124.h,
                  width: 137.w,
                  child: Image(image: AssetImage(image),fit: BoxFit.fill,),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                SizedBox(height: 5.h,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Customtext(text:name,fontweight: FontWeight.bold,),
                      SizedBox(height: 5.h,),
                      Row(children: [
                        Image(image: AssetImage(Appimages.location)),
                        SizedBox(width: 5.w,),
                        Customtext(text: locationName,color: Colors.grey,fontsize: 10,)
                      ],),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Icon(Icons.star,color: Colors.orange,size: 20,),
                          Icon(Icons.star,color: Colors.orange,size: 20,),
                          Icon(Icons.star,color: Colors.orange,size: 20,),
                          SizedBox(width: 5.w,),
                          Customtext(text: ratting,fontweight: FontWeight.bold,),
                        ],
                      ),
                      SizedBox(height: 5.h,),
                      Row(
                        children: [
                          Customtext(text: '\$$price',color: Colors.blue,),
                          Customtext(text: '/person',color: Colors.grey,),
                        ],
                      ),
                    ],),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Bookmarkcontainer(image: Appimages.heart, height: 30,width: 30,
                      onTap: (){}),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
