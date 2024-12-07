
import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Components/Custom%20ListTile.dart';
import 'package:travel_app/Controller/Constant/linker.dart';
import 'package:travel_app/View/Popular_Messages_Profile/Popular.dart';

class CalendarNav extends StatelessWidget {
  const CalendarNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.lightgray,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},color: Colors.black,),
                CustomtextBold(text: 'Schedule',fontsize: 18,color: Colors.black,),
                Bookmarkcontainer(image: Appimages.bookmark,onTap: (){},color: Colors.black,),
              ],),
            SizedBox(height: 20.h,),
            Container(
              height: 215.h,
              width: 335.w,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child:  CalendarDatePicker(
                initialDate:  DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2100),
                onDateChanged: (DateTime newDate) {
                  print("Selected date: $newDate");
                },),
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              CustomtextBold(text: 'My Schedule',fontsize: 20,),
              GestureDetector(
                onTap: (){
                  Navigator.push(context, CupertinoPageRoute(builder: (context)=>PopularScreen()));
                },
                  child: Customtext(text: 'View all',color: Colors.blue,fontsize: 18,))
            ],),
            SizedBox(height: 20.h,),
            CustomListTile(image: Appimages.destination3, date: '23 jan 2012', name: 'High Rech Park', locationName: 'Tekergat, sunamgng'),
            SizedBox(height: 20.h,),
            CustomListTile(image: Appimages.destination4, date: '28 jan 2012', name: 'Niladry  Reservor', locationName: 'Zeroo, point'),
            SizedBox(height: 20.h,),
            CustomListTile(image: Appimages.destination5, date: '28 jan 2012', name: 'Niladry  Reservor', locationName: 'Zeroo, point'),
            SizedBox(height: 20.h,),
            CustomListTile(image: Appimages.destination6, date: '28 jan 2012', name: 'Niladry  Reservor', locationName: 'Zeroo, point'),
            SizedBox(height: 20.h,),
            CustomListTile(image: Appimages.destination1, date: '28 jan 2012', name: 'Niladry  Reservor', locationName: 'Zeroo, point'),
          ],),
        ),
      ),
    );
  }
}
