
import 'package:travel_app/Controller/Constant/linker.dart';

class ProfileListTile extends StatelessWidget {
  String image;
  String name;
   ProfileListTile({super.key,required this.image,required this.name});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      leading: Image(image: AssetImage(image),color: Colors.black,),
      title: CustomtextBold(text: name,fontsize: 15,),
      trailing: Icon(Icons.arrow_forward_ios,color: Colors.grey,),
    );
  }
}
