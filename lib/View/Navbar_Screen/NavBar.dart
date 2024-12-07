import 'package:travel_app/Controller/Constant/linker.dart';
import 'package:travel_app/View/Navbar_Screen/Calendar.dart';
import 'package:travel_app/View/Navbar_Screen/MessageNav.dart';
import 'package:travel_app/View/Navbar_Screen/ProfileNav.dart';
import 'package:travel_app/View/Navbar_Screen/SearchNav.dart';
class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedindex=0;
  void navOntab(int index)
  {
    setState(() {
      _selectedindex=index;
    });
  }

  List widgetOptions=
  [
    HomeNav(),
    CalendarNav(),
    Searchnav(),
    MessageNav(),
    ProfileNav()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: widgetOptions.elementAt(_selectedindex),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          currentIndex: _selectedindex,
          onTap: navOntab,
          selectedItemColor: Colors.blue,
          /// unselectedItemColor: Colors.blue,
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.home)),label: 'Home'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.calender)),label: 'Calendar'),
            BottomNavigationBarItem(icon:
            CircleAvatar(
              radius: 30.r,
              backgroundColor: Colors.blue,
              child: Center(child: Icon(Icons.search,color: Colors.white,size: 30,),),
            ),label: ''),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.messages)),label: 'Messages'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage(Appimages.profile)),label: 'Profile'),
          ]
      ),
    );
  }
}