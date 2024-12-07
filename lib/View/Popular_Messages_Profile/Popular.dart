
import 'package:travel_app/Controller/Components/Popular_Container.dart';
import 'package:travel_app/Controller/Constant/linker.dart';

class PopularScreen extends StatelessWidget {
  const PopularScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.lightgray,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},),
                SizedBox(width: 90.w,),
                CustomtextBold(text: 'Popular Places',fontsize: 18,color: Colors.black,),
              ],),
            SizedBox(height: 40.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomtextBold(text: 'Popular Places',fontsize: 20,color: Colors.black,),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              PopularContainer(image: Appimages.destination3, name:'Niladri Reservor', locationName: 'Tekerget, Sunamgng', ratting: '4.8', price: '100'),
              PopularContainer(image: Appimages.destination4, name:'Niladri Reservor', locationName: 'Tekerget, Sunamgng', ratting: '4.9', price: '100'),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularContainer(image: Appimages.destination5, name:'Niladri Reservor', locationName: 'Tekerget, Sunamgng', ratting: '4.8', price: '100'),
                PopularContainer(image: Appimages.destination6, name:'Niladri Reservor', locationName: 'Tekerget, Sunamgng', ratting: '4.9', price: '100'),
              ],
            ),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularContainer(image: Appimages.destination1, name:'Niladri Reservor', locationName: 'Tekerget, Sunamgng', ratting: '4.8', price: '100'),
                PopularContainer(image: Appimages.destination2, name:'Niladri Reservor', locationName: 'Tekerget, Sunamgng', ratting: '4.9', price: '100'),
              ],
            ),
          ],),
        ),
      ),
    );
  }
}
