import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Constant/linker.dart';
import 'package:travel_app/View/NotificationScreen.dart';
import 'package:travel_app/View/Popular_Messages_Profile/Popular.dart';
import 'package:travel_app/View/Popular_Messages_Profile/ProfileScreen.dart';

class HomeNav extends StatelessWidget {
const HomeNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.lightgray,
      body: Padding(
        padding: const EdgeInsets.only(top: 60,right: 20,left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>ProfileScreen(name: 'Arslan',image: Appimages.boy,)));
                },
                child: Container(
                  width: 125.w,
                  height: 44.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 6),
                    child: Row(children: [
                      CircleAvatar(
                        radius: 20.r,
                        backgroundImage: AssetImage(Appimages.boy),
                      ),
                      SizedBox(width: 10.w,),
                      Customtext(text: 'Arslan',fontweight: FontWeight.bold,),
                    ],),
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>Notificationscreen()));
                },
                child: Container(
                  height: 44.h,
                  width: 44.h,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Center(child: Image(image: AssetImage(Appimages.notifications))),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h,),
          CustomtextBold(text: 'Explore the',fontweight: FontWeight.normal,fontsize: 35,),
          Row(
            children: [
              CustomtextBold(text: 'Beatiful',fontsize: 35,),
              SizedBox(width: 10.w,),
              Column(
                children: [
                  CustomtextBold(text: 'World!',fontsize: 35,color: Colors.orange.shade700,),
                  Container(
                    width: 100,
                    height: 7,
                    decoration: BoxDecoration(
                      color: Colors.orange,
                    //  borderRadius: BorderRadius.circular(10),
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )
                    ),
                  )
                ],
              ),
            ],
          ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CustomtextBold(text: 'Best Destination',fontsize: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>PopularScreen()));
                },
                  child: Customtext(text: 'View all',color: Colors.blue,fontsize: 18,))
            ],),
            SizedBox(height: 20.h,),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                 DestinationContainer(destinationImage: Appimages.destination1, destinationName: 'Niladri Reservoir', locationName: 'Tekergat Sunamgnj',rating: '4.5',),
                 SizedBox(width: 20.w,),
                 DestinationContainer(destinationImage: Appimages.destination2, destinationName: 'Darma  Reservoir', locationName: 'Darma, Kuningan',rating: '4.6',),
                  SizedBox(width: 20.w,),
                  DestinationContainer(destinationImage: Appimages.destination1, destinationName: 'Niladri Reservoir', locationName: 'Tekergat Sunamgnj',rating: '4.9',),
                  SizedBox(width: 20.w,),
                  DestinationContainer(destinationImage: Appimages.destination2, destinationName: 'Darma  Reservoir', locationName: 'Darma, Kuningan',rating: '4.9',),
                  SizedBox(width: 20.w,),
                  DestinationContainer(destinationImage: Appimages.destination1, destinationName: 'Niladri Reservoir', locationName: 'Tekergat Sunamgnj',rating: '4.2',),
                ],
              ),
            )

          ],),
      ),
    );
  }
}
