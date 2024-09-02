import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Watchlater extends StatefulWidget {
  static String routeName = './Watchlater';
  const Watchlater({super.key});

  @override
  State<Watchlater> createState() => _WatchlaterState();
}

class _WatchlaterState extends State<Watchlater> {
  List<dynamic> watchlater = <dynamic>[
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
  ];
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
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
                    height: MediaQuery.of(context).size.width * 6 / 100,
                    width: MediaQuery.of(context).size.width * 5 / 100,
                    child: Image.asset(AppImage.backIcon),
                  ),
                ),
                Text(
                  AppLanguage.watchlaterText[language],
                  style: AppConstant.appBarTitleStyle,
                ),
                Container()
              ],
            ),
          ),
          //============================header END================================
          SizedBox(
            height: MediaQuery.of(context).size.height * 2 / 100,
          ),

          //=============================Main List=======================
          Expanded(
            flex: 1,
            child: SingleChildScrollView(
              child: Wrap(direction: Axis.vertical, children: [
                ...List.generate(
                  watchlater.length,
                  (index) => GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>const Detail()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 16 / 100,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.width * 25 / 100,
                            width: MediaQuery.of(context).size.width * 40 / 100,
                            child: Image.asset(
                              watchlater[index]["image"],
                              fit: BoxFit.cover,
                            ),
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      2 /
                                      100,
                                ),
                                Text(
                                  watchlater[index]["text"],
                                  maxLines: 1,
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.5 /
                                      100,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.width *
                                          4 /
                                          100,
                                      width: MediaQuery.of(context).size.width *
                                          4 /
                                          100,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(30),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                watchlater[index]["profile"],
                                              ),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100,
                                    ),
                                    Text(
                                      watchlater[index]["name"],
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.5 /
                                      100,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height: MediaQuery.of(context).size.width *
                                          4 /
                                          100,
                                      width: MediaQuery.of(context).size.width *
                                          4 /
                                          100,
                                      child: Image.asset(
                                        watchlater[index]["eye"],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100,
                                    ),
                                    Text(
                                      watchlater[index]["like"],
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            height: MediaQuery.of(context).size.width * 20 / 100,
                            width: MediaQuery.of(context).size.width * 9 / 100,
                            child: Image.asset(AppImage.redbookmarkIcon),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ]),
            ),
          ),
        ],
      ),
    )));
  }
}
