import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Movies extends StatefulWidget {
  static String routeName = './Movies';
  const Movies({super.key});

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  int isclick = 0;
  List<dynamic> videoslist = <dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_profile6.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_profile5.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
  ];
  List<dynamic> mostpopular = <dynamic>[
    {
      "image": "./assets/icons/image_home2.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_profile6.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
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
                    child: Column(children: [
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
                                height:
                                    MediaQuery.of(context).size.width * 6 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                child: Image.asset(AppImage.backIcon),
                              ),
                            ),
                            Text(
                              AppLanguage.moviesText[language],
                              style: AppConstant.appBarTitleStyle,
                            ),
                            Container()
                          ],
                        ),
                      ),
                      //============================header END================================
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 80 / 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isclick = 0;
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        40 /
                                        100,
                                    alignment: Alignment.center,
                                    color: AppColor.secondryColor,
                                    child: Text(
                                      AppLanguage.mostrecentText[language],
                                      style: TextStyle(
                                          color: isclick == 0
                                              ? AppColor.primaryColor
                                              : AppColor.greyLightColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        20 /
                                        100,
                                    alignment: Alignment.center,
                                    color: isclick == 0
                                        ? AppColor.primaryColor
                                        : AppColor.secondryColor,
                                  ),
                                ],
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  isclick = 1;
                                });
                              },
                              child: Column(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        40 /
                                        100,
                                    alignment: Alignment.center,
                                    color: AppColor.secondryColor,
                                    child: Text(
                                      AppLanguage.mostpopularText[language],
                                      style: TextStyle(
                                          color: isclick == 1
                                              ? AppColor.primaryColor
                                              : AppColor.greyLightColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.3 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        20 /
                                        100,
                                    alignment: Alignment.center,
                                    color: isclick == 1
                                        ? AppColor.primaryColor
                                        : AppColor.secondryColor,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      //============================List start================================
                      if (isclick == 0)
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Wrap(
                              children: [
                                ...List.generate(
                                  videoslist.length,
                                  (index) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        30 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        45 /
                                        100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    videoslist[index]["image"],
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1 /
                                              100,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    videoslist[index]
                                                        ["profile"],
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          child: Text(
                                            videoslist[index]["name"],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                color: AppColor.themeColor1,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          child: Text(
                                            videoslist[index]["text"],
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: const TextStyle(
                                                color: AppColor.primaryColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1 /
                                              100,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )

                      //============================List start================================
                      ,
                      if (isclick == 1)
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Wrap(
                              children: [
                                ...List.generate(
                                  mostpopular.length,
                                  (index) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        30 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        45 /
                                        100,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          alignment: Alignment.center,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    mostpopular[index]["image"],
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1 /
                                              100,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(60),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                    mostpopular[index]
                                                        ["profile"],
                                                  ),
                                                  fit: BoxFit.cover)),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          child: Text(
                                            mostpopular[index]["name"],
                                            textAlign: TextAlign.center,
                                            style: const TextStyle(
                                                color: AppColor.themeColor1,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              30 /
                                              100,
                                          child: Text(
                                            mostpopular[index]["text"],
                                            textAlign: TextAlign.center,
                                            maxLines: 2,
                                            style: const TextStyle(
                                                color: AppColor.primaryColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                        ),
                                        SizedBox(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              1 /
                                              100,
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                    ])))));
  }
}
