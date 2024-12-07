

import 'package:travel_app/Controller/Constant/linker.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Bookmarkcontainer(image: Appimages.back,onTap: (){Navigator.pop(context);},color: Colors.black,),
            CustomtextBold(text: 'Schedule',fontsize: 18,color: Colors.black,),
            Bookmarkcontainer(image: Appimages.bookmark,onTap: (){},color: Colors.black,),
          ],),
      ],),
    );
  }
}
