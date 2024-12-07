

import 'package:travel_app/Controller/Components/Profile-ListTile.dart';
import 'package:travel_app/Controller/Constant/linker.dart';

class ProfileScreen extends StatelessWidget {
  String image;
  String name;
   ProfileScreen({super.key,required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.lightgray,
      body:Padding(
        padding: const EdgeInsets.only(top: 60,right: 20,left: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},color: Colors.black,),
              CustomtextBold(text: 'Profile',fontsize: 18,color: Colors.black,),
              Bookmarkcontainer(image: Appimages.rename,onTap: (){},color: Colors.blue,),
            ],),
          SizedBox(height: 20.h,),
          CircleAvatar(
            radius: 70,
            backgroundImage: AssetImage(image),
          ),
          SizedBox(height: 20.h,),
          CustomtextBold(text: name,fontsize: 20,),
          SizedBox(height: 5.h,),
          Customtext(text: 'arslan@gmail.com',color: Colors.grey.shade600,),
          SizedBox(height: 20.h,),
          Container(
            height: 80.h,
            width: 335.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                  CustomtextBold(text: 'Reward point',fontsize: 15,),
                  CustomtextBold(text: 'Travel Trips',fontsize: 15,),
                  CustomtextBold(text: 'Bucket List',fontsize: 15,),
                ],),
                SizedBox(height: 10.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomtextBold(text: '360',fontsize: 20,color: Colors.blue,),
                      CustomtextBold(text: '238',fontsize: 20,color: Colors.blue,),
                      CustomtextBold(text: '436',fontsize: 20,color: Colors.blue,),
                    ],),
              ],),
            )
          ),
          SizedBox(height: 20.h,),
          ProfileListTile(image: Appimages.profile, name: 'Profile'),
          SizedBox(height: 3.h,),
          ProfileListTile(image: Appimages.bookmark, name: 'Bookmarked'),
          SizedBox(height: 3.h,),
          ProfileListTile(image: Appimages.trip, name: 'Previous Trips'),
          SizedBox(height: 3.h,),
          ProfileListTile(image: Appimages.settings, name: 'Settings'),
          SizedBox(height: 3.h,),
          ProfileListTile(image: Appimages.version, name: 'Version'),
        ],),
      ),
    );
  }
}
