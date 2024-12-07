


import 'package:travel_app/Controller/Components/Popular_Container.dart';
import 'package:travel_app/Controller/Constant/linker.dart';

class Searchnav extends StatelessWidget {
   Searchnav({super.key});

TextEditingController searchController=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.lightgray,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},color: Colors.black,),
                CustomtextBold(text: 'Search',fontsize: 18,color: Colors.black,),
                CustomtextBold(text: 'Cancel',fontsize: 18,color: Colors.blue,),
              ],),
            SizedBox(height: 20.h,),
            Container(
              decoration: BoxDecoration(
                color: Appcolor.gray,
                borderRadius: BorderRadius.circular(10),
              ),
             child: Row(
               children: [
                 Expanded(
                     flex: 10,
                     child: Container(
                       child: Image(image: AssetImage(Appimages.search2)),
                     )),
                 Expanded(
                   flex:70,
                     child: Padding(
                       padding: const EdgeInsets.only(left: 10),
                       child: TextFormField(
                         controller: searchController,
                         decoration: InputDecoration(
                           border: InputBorder.none,
                           hintText: 'Search Places'
                         ),
                       ),
                     )),
                 Expanded(
                   flex: 20,
                     child: Container(
                       child: Center(
                         child: Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 10),
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                             Customtext(text: '|',fontsize: 20,color: Colors.grey,),
                             Image(image: AssetImage(Appimages.microphone)),
                           ],),
                         ),
                       ),
                     )),
               ],
             ),
            ),
            SizedBox(height: 20.h,),
            CustomtextBold(text: 'Search Places',fontsize: 20,),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                PopularContainer(image: Appimages.destination2, name: 'Niladri Reservor', locationName: 'Tekaeget, Sunamgng', ratting: '5.0', price: '299'),
                PopularContainer(image: Appimages.destination5, name: 'Casa Las Tirtugas', locationName: 'Tekaeget, Sunamgng', ratting: '4.0', price: '199'),
              ],
            ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PopularContainer(image: Appimages.destination6, name: 'Niladri Reservor', locationName: 'Tekaeget, Sunamgng', ratting: '5.0', price: '299'),
                  PopularContainer(image: Appimages.destination1, name: 'Casa Las Tirtugas', locationName: 'Tekaeget, Sunamgng', ratting: '4.0', price: '199'),
                ],
              ),
              SizedBox(height: 20.h,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  PopularContainer(image: Appimages.destination3, name: 'Niladri Reservor', locationName: 'Tekaeget, Sunamgng', ratting: '5.0', price: '299'),
                  PopularContainer(image: Appimages.destination4, name: 'Casa Las Tirtugas', locationName: 'Tekaeget, Sunamgng', ratting: '4.0', price: '199'),
                ],
              ),
          ],),
        ),
      ),
    );
  }
}
