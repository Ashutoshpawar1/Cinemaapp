import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/announcement_saved.dart';
import 'package:cinemaapp/view/otherpages/archive.dart';
import 'package:cinemaapp/view/otherpages/playlist.dart';
import 'package:cinemaapp/view/otherpages/watchlater.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Saved extends StatefulWidget {
  static String routeName = './Saved';
  const Saved({super.key});

  @override
  State<Saved> createState() => _SavedState();
}

class _SavedState extends State<Saved> {
  List<dynamic> savedlist = <dynamic>[
    {"image": "./assets/icons/image_avengers.jpg", "name": "Watch Later"},
    {
      "image": "./assets/icons/icon_announcementred.png",
      "name": "Announcements"
    },
    {"image": "./assets/icons/image_profile6.jpg", "name": "Archive"},
    {"image": "./assets/icons/image_profile8.jpg", "name": "Playlist name"},
    {"image": "./assets/icons/image_home2.jpg", "name": "Playlist name"},
    {"image": "./assets/icons/image_avengers.jpg", "name": "Playlist name"},
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
            backgroundColor: AppColor.secondryColor,
            body: SafeArea(
                child: Container(
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    height: MediaQuery.of(context).size.height * 100 / 100,
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 4 / 100,
                        ),

                        //============================header===================================
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.width *
                                      6 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  child: Image.asset(AppImage.backIcon),
                                ),
                              ),
                              Text(
                                AppLanguage.savedText[language],
                                style: AppConstant.appBarTitleStyle,
                              ),
                              Container()
                            ],
                          ),
                        ),
                        //============================header END================================
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 4 / 100,
                        ),

                        //==============================saved container list=========================
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Wrap(
                              children: [
                                ...List.generate(
                                  savedlist.length,
                                  (index) => GestureDetector(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: GestureDetector(
                                        onTap: () {
                                          if (savedlist[index]["name"] ==
                                              "Watch Later")
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Watchlater()));
                                          if (savedlist[index]["name"] ==
                                              "Archive")
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Archive()));
                                          if (savedlist[index]["name"] ==
                                              "Playlist name")
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        Playlist()));
                                          if (savedlist[index]["name"] ==
                                              "Announcements")
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        AnnouncementSaved()));
                                        },
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  40 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  50 /
                                                  100,
                                              child: Image.asset(
                                                savedlist[index]["image"],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            SizedBox(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  1 /
                                                  100,
                                            ),
                                            Text(
                                              savedlist[index]["name"],
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 16),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    )))));
  }
}
