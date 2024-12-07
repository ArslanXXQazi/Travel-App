

import 'package:travel_app/Controller/Components/MessageListTile.dart';
import 'package:travel_app/Controller/Constant/linker.dart';

class MessageNav extends StatelessWidget {
  const MessageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Appcolor.lightgray,
      body: Padding(
        padding: const EdgeInsets.only(top: 40,right: 20,left: 20),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},color: Colors.black,),
                CustomtextBold(text: 'Messages',fontsize: 18,color: Colors.black,),
                Bookmarkcontainer(image: Appimages.menu,onTap: (){},color: Colors.black,),
              ],),
            SizedBox(height: 20.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomtextBold(text: 'Messages',fontsize: 20,),
                Container(
                  height: 30.h,
                  width: 30.w,
                  color: Appcolor.lightgray,
                  child:Image(image: AssetImage(Appimages.edit,),color: Colors.black,),
                )
              ],
            ),
            SizedBox(height: 20.h,),
            Container(
              height: 50,
              decoration: BoxDecoration(
                color: Appcolor.gray,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(children: [
                Expanded(
                    flex: 20,
                    child: Container(
                      child: Image(image: AssetImage(Appimages.search2)),
                    )),
                Expanded(
                    flex:80,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 0),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search for chat & messages'
                        ),
                      ),
                    )),
              ],),
            ),
            SizedBox(height: 10.h,),
            MessageListTile(image: Appimages.boy, name: 'Arslan Qazi', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy3, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy7, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy5, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy8, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy4, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy5, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),


          ],),
        ),
      ),
    );
  }
}
