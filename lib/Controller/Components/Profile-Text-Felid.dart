

import 'package:travel_app/Controller/Constant/linker.dart';

class ProfileTextFeild extends StatelessWidget {
  String hintText;
  String name;
  TextEditingController controller;

  ProfileTextFeild({super.key,
    required this.name,
    required this.hintText,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomtextBold(text: name,fontsize: 15,),
        SizedBox(height: 10.h,),
        Container(
          decoration: BoxDecoration(
            color: Appcolor.gray,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: TextFormField(
              controller: controller,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: hintText,
                  suffixIcon: Image(image: AssetImage(Appimages.tick),color: Colors.green,)
              ),
            ),
          ),
        )
      ],);
  }
}
