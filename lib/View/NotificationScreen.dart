


import 'package:travel_app/Controller/Components/MessageListTile.dart';
import 'package:travel_app/Controller/Constant/linker.dart';
import 'package:travel_app/View/Navbar_Screen/ProfileNav.dart';

class Notificationscreen extends StatelessWidget {
  const Notificationscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        backgroundColor: Appcolor.lightgray,
        appBar: AppBar(
          backgroundColor: Appcolor.lightgray,
          leading:IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
          title: CustomtextBold(text: "Notification",fontsize: 20,),
          centerTitle: true,
          actions: [
            CustomtextBold(text: 'Clear all',fontsize: 15,color: Colors.blue,)
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.blue,
            unselectedLabelColor: Colors.black,
            labelPadding: EdgeInsets.symmetric(horizontal: 20),

            tabs: [
             Text('Recent',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
             Text('Earlier',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
             Text('Archived',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),),
            ],
          ),
        ),
        body: TabBarView(children: [
         SingleChildScrollView(
           child: Column(children: [
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
        Column(children: [
          MessageListTile(image: Appimages.boy, name: 'Arslan Qazi', subTitle: 'Hi Arslan Qazi How Are You?'),
          SizedBox(height: 5.h,),
          MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
          SizedBox(height: 5.h,),
          MessageListTile(image: Appimages.boy3, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
          SizedBox(height: 5.h,),
          MessageListTile(image: Appimages.boy7, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
          SizedBox(height: 5.h,),
          MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
          SizedBox(height: 5.h,),
          MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
        ],),
          Column(children: [
            MessageListTile(image: Appimages.boy2, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy3, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
            SizedBox(height: 5.h,),
            MessageListTile(image: Appimages.boy7, name: 'Muhammad furqan', subTitle: 'Hi Arslan Qazi How Are You?'),
          ],)
        ])
      ),
    );
  }
}
