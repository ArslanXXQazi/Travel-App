import 'package:flutter/cupertino.dart';
import 'package:travel_app/Controller/Constant/linker.dart';

class Onbordingview extends StatefulWidget {
  const Onbordingview({super.key});

  @override
  State<Onbordingview> createState() => _OnbordingviewState();
}

class _OnbordingviewState extends State<Onbordingview> {

  PageController _pageController=PageController();
  int _currentPage=0;

  void _onPage(int page)
  {
    setState(() {
      _currentPage=page;
    });
  }

  void _nextPage()
  {
    if(_currentPage<2)
    {
      _pageController.animateToPage(_currentPage+1, duration: Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: _onPage,
        controller:_pageController ,
        children: [
          pagebulid(Appimages.onbording1, Appimages.text1,'  To get the best of your adventure you just\n need to leave and go where you like. we are\n                       waiting for you'),
          pagebulid(Appimages.onbording2, Appimages.text2,'  To get the best of your adventure you just\n need to leave and go where you like. we are\n                       waiting for you'),
          pagebulid(Appimages.onbording3, Appimages.text3,'  To get the best of your adventure you just\n need to leave and go where you like. we are\n                       waiting for you'),
        ],
      )
    );
  }
  Widget pagebulid( String image,String image2,String text2)
  {
    return Padding(
      padding: const EdgeInsets.only(bottom:30 ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            Column(
              children: [
                Container(
                  height: 444.h,
                  width: 375.w,
                  color: Colors.white,
                  child: Image(image: AssetImage(image),fit: BoxFit.cover,),
                ),
                SizedBox(height: 30.h,),
                Image(image: AssetImage(image2)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                Customtext(text:text2,),
              ],),
            ),
              _currentPage!=2? CustomButton(text: "Next", ontab: (){_nextPage();}):
              CustomButton(text: "Next", ontab: (){Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignIn()));})
          ],),
          Padding(
            padding: const EdgeInsets.only(right: 40,top: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, CupertinoPageRoute(builder: (context)=>SignIn()));
                  },
                    child: Customtext(text: 'Skip',color: Colors.white,fontsize: 20.sp,)),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
