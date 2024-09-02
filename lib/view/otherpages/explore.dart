import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_footer.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/authentication/notifiction_screen.dart';
import 'package:cinemaapp/view/otherpages/categories.dart';
import 'package:cinemaapp/view/otherpages/channels.dart';
import 'package:cinemaapp/view/otherpages/movies.dart';
import 'package:cinemaapp/view/otherpages/search.dart';
import 'package:cinemaapp/view/otherpages/series.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Explore extends StatefulWidget {
  static String routeName = './Explore';
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  List<dynamic> explore = <dynamic>[
    {"image": "./assets/icons/image_circle.png", "name": "Movies"},
    {"image": "./assets/icons/image_circle.png", "name": "Series"},
    {"image": "./assets/icons/image_circle.png", "name": "Categories"},
    {"image": "./assets/icons/image_circle.png", "name": "Channels"},
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return WillPopScope(
      onWillPop: () {
        return Future.value(false);
      },
      child: GestureDetector(
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
                  height: MediaQuery.of(context).size.height * 4.5 / 100,
                ),

                //=============header=================
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.width * 13 / 100,
                        width: MediaQuery.of(context).size.width * 13 / 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            border: const GradientBoxBorder(
                              gradient: LinearGradient(colors: [
                                AppColor.redcolor,
                                AppColor.pinkcolor,
                                AppColor.lpinkcolor,
                                AppColor.mbluecolor,
                                AppColor.lbluecolor,
                              ]),
                            ),
                            image: const DecorationImage(
                                image: AssetImage(AppImage.profileImage),
                                fit: BoxFit.cover)),
                      ),
                      Container(
                        child: Text(
                          "${AppLanguage.exploreText[language]}${"    "}",
                          style: AppConstant.appBarTitleStyle,
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Notifications()));
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.width * 5 / 100,
                          width: MediaQuery.of(context).size.width * 5 / 100,
                          child: Image.asset(
                            AppImage.bellIcon,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Search()));
                  },
                  child: Container(
                      height: MediaQuery.of(context).size.height * 7 / 100,
                      width: MediaQuery.of(context).size.width * 75 / 100,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          border: Border.all(color: AppColor.greyLightColor)),
                      child: Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 3 / 100,
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(
                              AppImage.searchIcon,
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 3 / 100,
                          ),
                          Text(
                            AppLanguage.searchText[language],
                            style: const TextStyle(
                                color: AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 13),
                          )
                        ],
                      )),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 4 / 100,
                ),

                //======================================list start======================================
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Wrap(children: [
                      ...List.generate(
                        explore.length,
                        (index) => Container(
                          // color: Colors.red,
                          height: MediaQuery.of(context).size.height * 19 / 100,
                          width: MediaQuery.of(context).size.width * 38 / 100,
                          child: Column(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  if (explore[index]["name"] == "Series")
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Series()));
                                  if (explore[index]["name"] == "Categories")
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Categories()));
                                  if (explore[index]["name"] == "Channels")
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Channels()));

                                  if (explore[index]["name"] == "Movies")
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Movies()));
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      17 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      33 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                            explore[index]["image"],
                                          ),
                                          fit: BoxFit.contain)),
                                  child: Text(
                                    explore[index]["name"],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: AppColor.secondryColor,
                                        fontSize: 15,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ]),
                  ),
                )
              ],
            ),
          )),
          bottomNavigationBar: const AppFooter(
              selectedMenu: BottomMenus.explore, notificationCount: 0),
        ),
      ),
    );
  }
}
