


import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Constant/linker.dart';


class SignUp extends StatefulWidget {
  SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController  mail_Controller=TextEditingController();

  TextEditingController  password_Controller=TextEditingController();

  TextEditingController  name_Controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(child:
          Container(
            height: 690,
            width: 325,
            color: Colors.white,
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    CustomtextBold(text: 'Sign up now',fontsize: 26.sp,),
                    SizedBox(height: 10.h,),
                    Customtext(text: 'please fill the detail and create account',color: Colors.grey,),
                    SizedBox(height: 30.h,),
                    TextFelid(hintText: 'Name', controller: name_Controller),
                    SizedBox(height: 20.h,),
                    TextFelid(hintText: 'example@gmail.com', controller: mail_Controller),
                    SizedBox(height: 20.h,),
                    TextFelidPassword(hintText:'Password', controller: password_Controller),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Customtext(text: 'Password must be 8 character',color: Colors.grey,),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    CustomButton(text: 'Sign up', ontab: (){}),
                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Customtext(text: 'Already have an account '),
                        GestureDetector(
                          onTap: (){
                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignIn()));
                          },
                            child: Customtext(text: 'Sign in',color: Colors.blue,fontsize: 17,)),
                      ],
                    ),
                    SizedBox(height: 20.h,),
                    Customtext(text: 'Or connect'),
                  ],),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        radius: 22.r,
                        child: Image.asset(Appimages.instagram),
                      ),
                      SizedBox(width: 20.w,),
                      CircleAvatar(
                        radius: 22.r,
                        child: Image.asset(Appimages.facebook),
                      ),
                      SizedBox(width: 20.w,),
                      CircleAvatar(
                        radius: 22.r,
                        child: Image.asset(Appimages.twitter),
                      ),
                      //    Image(image: AssetImage('assets/instagram.png'))
                      //   ImageIcon(AssetImage('assets/instagram.png'),color: Colors.white,size: 50,),
                    ],)


                ],),
            ),
          ),),
          Positioned(
            left: 20.w,
            top: 50,
            child: GestureDetector(
              onTap: (){Navigator.pop(context);},
              child: CircleAvatar(
                backgroundColor: Colors.grey.shade200,
                child: Image.asset(Appimages.back),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
