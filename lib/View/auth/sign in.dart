import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Constant/linker.dart';
class SignIn extends StatefulWidget {
   SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
TextEditingController  mail_Controller=TextEditingController();

TextEditingController  password_Controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Center(child: Container(
            height: 690,
            width: 325,
            color: Colors.white,
            child:  Padding(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    CustomtextBold(text: 'Sign in now',fontsize: 26.sp,),
                    SizedBox(height: 10.h,),
                    Customtext(text: 'please sign in to continue our app',color: Colors.grey.shade600,),
                    SizedBox(height: 10.h,),
                    TextFelid(hintText: 'example@gmail.com', controller: mail_Controller),
                    SizedBox(height: 20.h,),
                    TextFelidPassword(hintText:'Password', controller: password_Controller),
                    SizedBox(height: 10.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        GestureDetector(
                          onTap:()
                          {
                            Navigator.push(context, CupertinoPageRoute(builder: (context)=>ForgotScreen()));
                          },
                            child: Customtext(text: 'Forgot Password?',color: Colors.blue,)),
                      ],
                    ),
                    SizedBox(height: 30.h,),
                    CustomButton(text: 'Sign in', ontab: ()
                    {
                      Navigator.push(context, CupertinoPageRoute(builder: (context)=>NavBarScreen()));
                    }),
                    SizedBox(height: 30.h,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Customtext(text: 'Dont have account? '),
                        GestureDetector(
                          onTap: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignUp()));},
                            child: Customtext(text: 'Sign up',color: Colors.blue,fontsize: 17.sp,)),
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
