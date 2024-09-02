import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/view/authentication/profile.dart';
import 'package:cinemaapp/view/otherpages/announcements.dart';
import 'package:cinemaapp/view/otherpages/explore.dart';
import 'package:flutter/material.dart';
import '../view/authentication/home_screen.dart';
import 'app_constant.dart';
import 'app_image.dart';

class AppFooter extends StatelessWidget {
  const AppFooter(
      {key, required this.selectedMenu, required this.notificationCount})
      : super(key: key);

  final BottomMenus selectedMenu;
  final int notificationCount;

  @override
  Widget build(BuildContext context) {
    // print('notificationCount=====> $notificationCount');
    // print(notificationCount);
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 8 / 100,
      color: AppColor.secondryColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SafeArea(
            top: false,
            child: Row(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    if (BottomMenus.home != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Home()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 25 / 100,
                    child: Column(
                      children: [
                        Container(
                           height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.home == selectedMenu
                                          ? AppImage.videoIcon
                                          : AppImage.hidevideoIcon))),
                        ),
                        // Text(
                        //   "Home",
                        //   style: TextStyle(
                        //       color: BottomMenus.home != selectedMenu
                        //           ? Colors.white
                        //           : Colors.orange,
                        //       fontWeight: FontWeight.w400),
                        // ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (BottomMenus.explore != selectedMenu) {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Explore()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 25 / 100,
                    child: Column(
                      children: [
                        Container(
                         height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              // borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.explore == selectedMenu
                                          ? AppImage.searchshowIcon
                                          : AppImage.searchhideIcon))),
                        ),
                        // Text(
                        //   "Search",
                        //   style: TextStyle(
                        //       color: BottomMenus.notification == selectedMenu
                        //           ? Colors.orange
                        //           : Colors.white,
                        //       fontWeight: FontWeight.w400),
                        // ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (BottomMenus.announcements != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Announcements()));
                    }
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width * 25 / 100,
                    child: Column(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.announcements == selectedMenu
                                          ? AppImage.announceshowIcon
                                          : AppImage.announcehideIcon))),
                        ),
                        // Text(
                        //   "Notification",
                        //   style: TextStyle(
                        //       color: BottomMenus.home != selectedMenu
                        //           ? Colors.white
                        //           : Colors.orange,
                        //       fontWeight: FontWeight.w400),
                        // ),
                      ],
                    ),
                  ),
                ),
                InkWell(
                  onTap: () {
                    if (BottomMenus.profile != selectedMenu) {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => const Profile()));
                    }
                  },
                  child: Container(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width * 25 / 100,
                    child: Column(
                      children: [
                        Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                          // color: Colors.red,
                              image: DecorationImage(
                                  image: AssetImage(
                                      BottomMenus.profile == selectedMenu
                                          ? AppImage.profileshowIcon
                                          : AppImage.prodilehideIcon))),
                        ),
                        // Text(
                        //   "Profile",
                        //   style: TextStyle(
                        //       color: BottomMenus.profile != selectedMenu
                        //           ? Colors.white
                        //           : Colors.orange,
                        //       fontWeight: FontWeight.w400),
                        // ),
                      ],
                    ),
                  ),
                ),
                









              ],
            ),
          ),
        ],
      ),
    );
  }
}























    // SizedBox(
                  //   height: MediaQuery.of(context).size.height * 12 / 100,
                  // ),
                  // Container(
                  //   width: MediaQuery.of(context).size.width * 100 / 100,
                  //   height: MediaQuery.of(context).size.width * 15 / 100,
                  //   child: Image.asset(
                  //     AppImage.headingbigrImg,
                  //     fit: BoxFit.fitWidth,
                  //   ),
                  // ),