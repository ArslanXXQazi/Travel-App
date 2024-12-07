

import 'package:travel_app/Controller/Constant/linker.dart';

class MessageListTile extends StatelessWidget {
  String image;
  String name;
  String subTitle;
  MessageListTile({super.key,
    required this.image,
    required this.name,
    required this.subTitle,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Stack(
        children: [
          CircleAvatar(
            radius: 25.r,
            backgroundImage: AssetImage(image),
          ),
          Positioned(
            top: 30,left: 35,
            child: CircleAvatar(
              radius: 8.r,
              backgroundColor: Colors.white,
              child: Center(
                child: CircleAvatar(
                  radius: 6.r,
                  backgroundColor: Colors.green,
                ),
              ),
            ),
          ),
        ],
      ),
      title: CustomtextBold(text: name,fontsize: 16,),
      subtitle: Customtext(text: subTitle,color: Colors.grey,),
      trailing: Image(image: AssetImage(Appimages.tick)),
    );
  }
}
