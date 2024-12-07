




import 'package:travel_app/Controller/Constant/linker.dart';

class DetailScreen extends StatelessWidget {
  String destinationImage;
  String destinationName;
  String rating;
  String locationName;
   DetailScreen({super.key,
     required this.destinationImage,
     required this.destinationName,
     required this.rating,
     required this.locationName,
   });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Stack(
          children: [
            Container(
              height: 401.h,
              width: double.infinity.w,
              color: Colors.white,
              child: Image.asset(destinationImage,fit: BoxFit.fill,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},),
                CustomtextBold(text: 'Details',fontsize: 18,color: Colors.white,),
                Bookmarkcontainer(image: Appimages.bookmark,onTap: (){},),
              ],),
            ),
          ],
        ),
        SizedBox(height: 5.h,),
        Container(
          height: 406.h,
          width: double.infinity.w,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomtextBold(text: destinationName,fontsize: 24,),
                  CircleAvatar(
                    radius: 25.r,
                    backgroundImage: AssetImage(Appimages.boy2),
                  )
                ],
              ),
                Customtext(text: locationName,color: Colors.grey,),
                SizedBox(height: 10.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Row(children: [
                    Image(image: AssetImage(Appimages.location)),
                    SizedBox(width: 5.w,),
                    Customtext(text: locationName,color: Colors.grey,)
                  ],),
                  Row(children: [
                    Icon(Icons.star,color: Colors.orange,size: 20,),
                    SizedBox(width: 5.w,),
                    Customtext(text: rating,fontweight: FontWeight.bold,),
                  ],),
                  Row(children: [
                    Customtext(text: '\$59',color: Colors.blue,),
                    Customtext(text: '/person',color: Colors.grey,),
                  ],),
                ],),
                SizedBox(height: 20.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 MoreDestination(image: Appimages.m1),
                 MoreDestination(image: Appimages.m2),
                 MoreDestination(image: Appimages.m3),
                 MoreDestination(image: Appimages.m4),
                ],),
                SizedBox(height: 20.h,),
                CustomtextBold(text: 'About destination',fontsize: 20,),
                SizedBox(height: 10.h,),
                Customtext(text: 'Duniya mein har shakhs ke dil ke kareeb ek aisi jagah hoti hai jo uske liye khaas hoti hai. Meri pyari jagah ek khubsoorat baagh hai jo mere ghar ke kareeb hai.',color: Colors.grey,),
                SizedBox(height: 20.h,),
                CustomButton(text: "Book Now", ontab: (){}),
              ],),
          ),
        )
      ],),
    );
  }
}
