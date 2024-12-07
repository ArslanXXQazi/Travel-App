


import 'package:travel_app/Controller/Constant/linker.dart';

class OtpScreen extends StatefulWidget {
  OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  TextEditingController  first_Controller=TextEditingController();
  TextEditingController  secound_Controller=TextEditingController();
  TextEditingController  thied_Controller=TextEditingController();
  TextEditingController  fourth_Controller=TextEditingController();

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
                  Column(
                    children: [
                    CustomtextBold(text: 'OTP Verification',fontsize: 26.sp,),
                    SizedBox(height: 10.h,),
                    Customtext(text: 'Please check your email to see\n       the verification code',color: Colors.grey.shade600,),
                    SizedBox(height: 30.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomtextBold(text: 'OTP Code',fontsize: 20,),
                        ],
                      ),
                      SizedBox(height: 20.h,),
                      Row(children: [
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: TextFormField(
                              controller: first_Controller,
                              decoration: InputDecoration(
                                border: InputBorder.none
                              ),
                            ),
                          ),
                        )),
                        SizedBox(width: 10.w,),
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: TextFormField(
                              controller: secound_Controller,
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        )),
                        SizedBox(width: 10.w,),
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: TextFormField(
                              controller: thied_Controller,
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        )),
                        SizedBox(width: 10.w,),
                        Expanded(child: Container(
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(left: 30),
                            child: TextFormField(
                              controller: fourth_Controller,
                              decoration: InputDecoration(
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        )),
                      ],),
                      SizedBox(height: 30.h,),
                      CustomButton(text: 'Verify', ontab: (){}),
                      SizedBox(height: 10.h,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Customtext(text: 'Resend code to',color: Colors.grey),
                        Customtext(text: '01:30',color: Colors.grey),
                      ],)


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
