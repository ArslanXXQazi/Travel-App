import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Constant/linker.dart';
class ForgotScreen extends StatefulWidget {
  ForgotScreen({super.key});
  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
  TextEditingController  mail_Controller=TextEditingController();

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
              padding: const EdgeInsets.only(top: 150),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(children: [
                    CustomtextBold(text: 'Forgot password',fontsize: 26.sp,),
                    SizedBox(height: 10.h,),
                    Customtext(text: 'Enter your email account to reset\n                your password',color: Colors.grey.shade600,),
                    SizedBox(height: 10.h,),
                    TextFelid(hintText: 'example@gmail.com', controller: mail_Controller),
                    SizedBox(height: 30.h,),
                    CustomButton(text: 'Reset Password',
                        ontab: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context)=>OtpScreen()));
                        }),
                    SizedBox(height: 30.h,),
                  ],),
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
