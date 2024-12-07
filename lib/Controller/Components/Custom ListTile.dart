

import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Constant/linker.dart';
import 'package:travel_app/View/Detail/Detail.dart';

class CustomListTile extends StatelessWidget {
  String image;
  String date;
  String name;
  String locationName;
   CustomListTile({super.key,
     required this.image,
     required this.date,
     required this.name,
     required this.locationName,
   });

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context)=>DetailScreen(
            destinationImage: image,
            destinationName: name,
            rating: '4.0',
            locationName: locationName,

        )));
      },
      child: Container(
        height: 100.h,
        width: 335.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(11),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            children: [
              Expanded(
                  flex:30,
                  child: Container(
                    height: 80.h,
                    width: 80.w,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image(image: AssetImage(image),fit: BoxFit.fill,),
                  )),
              SizedBox(width: 10.w,),
              Expanded(
                  flex:70,
                  child: Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image(image: AssetImage(Appimages.calender)),
                            SizedBox(width: 5.w,),
                            Customtext(text: date,color: Colors.grey,),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Customtext(text: name,fontweight: FontWeight.bold,fontsize: 16,),
                            Icon(Icons.arrow_forward_ios,color: Colors.grey,),
                          ],
                        ),
                        SizedBox(height: 5.h,),
                        Row(
                          children: [
                            Image(image: AssetImage(Appimages.location)),
                            SizedBox(width: 5,),
                            Customtext(text: locationName),
                          ],
                        ),
                      ],),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
