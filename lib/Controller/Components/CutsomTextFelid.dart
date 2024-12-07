import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_app/Controller/Components/Custom%20Text.dart';
import 'package:travel_app/Controller/Constant/Colors.dart';


class TextFelid extends StatefulWidget {

  String hintText;
  TextEditingController controller;

   TextFelid({super.key,
     required this.hintText,
     required this.controller,
   });

  @override
  State<TextFelid> createState() => _TextFelidState();
}

class _TextFelidState extends State<TextFelid> {
  @override
  Widget build(BuildContext context) {
    return  Container(

      decoration: BoxDecoration(
        color: Appcolor.lightgray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
              border: InputBorder.none,
              hintText: widget.hintText,
          ),
        ),
      ),
    );
  }
}

class TextFelidPassword extends StatefulWidget {

  String hintText;
  TextEditingController controller;

  TextFelidPassword({super.key,
    required this.hintText,
    required this.controller,
  });

  @override
  State<TextFelidPassword> createState() => _TextFelidPasswordState();
}

class _TextFelidPasswordState extends State<TextFelidPassword> {
  @override
  Widget build(BuildContext context) {
    return  Container(
      width: 325,
      decoration: BoxDecoration(
        color: Appcolor.lightgray,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Center(
          child: TextFormField(
            controller: widget.controller,
            decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.hintText,
              suffixIcon: Icon(Icons.remove_red_eye,color: Colors.grey,size: 20,),

            ),
          ),
        ),
      ),
    );
  }
}














