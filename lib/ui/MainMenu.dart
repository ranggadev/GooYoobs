import 'package:flutter/material.dart';
import 'package:gooyoobs/ui/home/Home.dart';
import 'package:gooyoobs/ui/menu/Menu.dart';
import 'package:gooyoobs/ui/user/UserProfile.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenuState createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {

  List<String> bottomNavAssets = [
    "assets/images_bottom_nav/home.png",
    "assets/images_bottom_nav/rewards_dis.png",
    "assets/images_bottom_nav/profile_dis.png",
  ];

  final List<Widget> pages = [
    Home(),
    Menu(),
    UserProfile(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[selectedIndex],
//      bottomNavigationBar: BottomNavigationBar(
//        items: const <BottomNavigationBarItem>[
//          BottomNavigationBarItem(
//            icon: Icon(Icons.home),
//            title: Text('Beranda'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.dashboard),
//            title: Text('Menu'),
//          ),
//          BottomNavigationBarItem(
//            icon: Icon(Icons.person),
//            title: Text('Akun'),
//          ),
//        ],
//        currentIndex: selectedIndex,
//        selectedItemColor: Colors.green,
//        onTap: onItemTapped,
//      ),
      bottomNavigationBar: Material(
        elevation: 8.0,
        color: Colors.white,
        child: Container(
          height: 60.0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  activeBottomNav(0);
                },
                child: Image.asset(
                  bottomNavAssets[0],
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.fill,
                ),
              ),
              InkWell(
                onTap: () {
                  activeBottomNav(1);
                },
                child: Image.asset(
                  bottomNavAssets[1],
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.fill,
                ),
              ),
              InkWell(
                onTap: () {
                  activeBottomNav(2);
                },
                child: Image.asset(
                  bottomNavAssets[2],
                  height: 50.0,
                  width: 50.0,
                  fit: BoxFit.fill,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

//  void onItemTapped(int index) {
//    setState(() {
//      selectedIndex = index;
//    });
//  }

  void activeBottomNav(int index) {
    setState(() {
      switch (index) {
        case 0:
          bottomNavAssets[0] = "assets/images_bottom_nav/home.png";
          bottomNavAssets[1] = "assets/images_bottom_nav/rewards_dis.png";
          bottomNavAssets[2] = "assets/images_bottom_nav/profile_dis.png";
          break;
        case 1:
          bottomNavAssets[0] = "assets/images_bottom_nav/home_dis.png";
          bottomNavAssets[1] = "assets/images_bottom_nav/rewards.png";
          bottomNavAssets[2] = "assets/images_bottom_nav/profile_dis.png";
          break;
        case 2:
          bottomNavAssets[0] = "assets/images_bottom_nav/home_dis.png";
          bottomNavAssets[1] = "assets/images_bottom_nav/rewards_dis.png";
          bottomNavAssets[2] = "assets/images_bottom_nav/profile.png";
          break;
        default:
          bottomNavAssets[0] = "assets/images_bottom_nav/home.png";
          bottomNavAssets[1] = "assets/images_bottom_nav/rewards_dis.png";
          bottomNavAssets[2] = "assets/images_bottom_nav/profile_dis.png";
      }

      selectedIndex = index;
    });
  }
}