

import 'package:travel_app/Controller/Components/Profile-Text-Felid.dart';
import 'package:travel_app/Controller/Constant/linker.dart';

class ProfileNav extends StatelessWidget {
   ProfileNav({super.key});
   TextEditingController firstname_Controller=TextEditingController();
   TextEditingController lastname_Controller=TextEditingController();
   TextEditingController location_Controller=TextEditingController();
   TextEditingController phoneNumber_Controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.lightgray,
      body: Padding(
        padding: const EdgeInsets.only(top: 60,right: 20,left: 20),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},color: Colors.black,),
              CustomtextBold(text: 'Edit Profile',fontsize: 18,color: Colors.black,),
              CustomtextBold(text: 'Done',fontsize: 18,color: Colors.blue,),
            ],),
          SizedBox(height: 20.h,),
          CircleAvatar(
            radius: 50.r,
            backgroundImage: AssetImage(Appimages.boy),
          ),
          SizedBox(height: 20.h,),
          CustomtextBold(text: 'Arslan',fontsize: 20,),
          SizedBox(height: 5.h,),
          Customtext(text: 'Change Profile Picture',color: Colors.blue,),
          SizedBox(height: 20.h,),
          ProfileTextFeild(name: 'First Name', hintText: 'Arslan', controller: firstname_Controller),
          SizedBox(height: 15.h,),
          ProfileTextFeild(name: 'Last Name', hintText: 'Qazi', controller: lastname_Controller),
          SizedBox(height: 15.h,),
          ProfileTextFeild(name: 'First Name', hintText: 'Pakistan', controller: location_Controller),
          SizedBox(height: 15.h,),
          ProfileTextFeild(name: 'Mobile Number', hintText: '+0987654321', controller: phoneNumber_Controller),

        ],),
      ),
    );
  }
}
