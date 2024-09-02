import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Series1 extends StatefulWidget {
  const Series1({super.key});
  static String routeName = './Series1';
  @override
  State<Series1> createState() => _Series1State();
}

class _Series1State extends State<Series1> {
  List<dynamic> series1list = <dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_boys.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
  ];
  List<dynamic> series2list = <dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_profile7.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Episode-3",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
        backgroundColor: AppColor.secondryColor,
        body: SafeArea(
            child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 4 / 100,
                  ),
                  //================Header==========================
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
                          "Sophia William",
                          style: AppConstant.appBarTitleStyle,
                        ),
                        Container()
                      ],
                    ),
                  ),
                  //================Header end==========================
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 6 / 100,
                  ),
                  //===============all page container scroll ==================
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          //=================== Season container==================

                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    30 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    0.1 /
                                    100,
                                color: AppColor.greyLightColor,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.seasonText[language] + " 1",
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    30 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    0.1 /
                                    100,
                                color: AppColor.greyLightColor,
                              ),
                            ],
                          ),
                          //=================== Season1 container==================

                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          //=============================Main List=======================

                          Container(
                            height:
                                MediaQuery.of(context).size.height * 45 / 100,
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: SingleChildScrollView(
                              child: Wrap(direction: Axis.vertical, children: [
                                ...List.generate(
                                  series1list.length,
                                  (index) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        15 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        90 /
                                        100,
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  23 /
                                                  100,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  40 /
                                                  100,
                                              child: Image.asset(
                                                series1list[index]["image"],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    4 /
                                                    100,
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    17 /
                                                    100,
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      5 /
                                                      100,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      5 /
                                                      100,
                                                  child: Image.asset(
                                                      AppImage.playIcon),
                                                ))
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              2 /
                                              100,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              25 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              45 /
                                              100,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1 /
                                                    100,
                                              ),
                                              Text(
                                                series1list[index]["name"],
                                                maxLines: 1,
                                                style: const TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5 /
                                                    100,
                                              ),
                                              Container(
                                                  child: Text(
                                                series1list[index]["text"],
                                                maxLines: 2,
                                                style: const TextStyle(
                                                    color:
                                                        AppColor.greyLightColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                              Text(series1list[index]["text1"],
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          AppColor.themeColor1,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontSize: 10,
                                                      color:
                                                          AppColor.themeColor1,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ),

                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),
                          //=================== Season2 container==================

                          Column(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    30 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    0.1 /
                                    100,
                                color: AppColor.greyLightColor,
                              ),
                              Container(
                                alignment: Alignment.center,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.seasonText[language] + " 2",
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    30 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    0.1 /
                                    100,
                                color: AppColor.greyLightColor,
                              ),
                            ],
                          ),
                          //=================== Season container==================

                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 2 / 100,
                          ),

                          //=================== Season2 container==================

                          Container(
                            height:
                                MediaQuery.of(context).size.height * 45 / 100,
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: SingleChildScrollView(
                              child: Wrap(direction: Axis.vertical, children: [
                                ...List.generate(
                                  series2list.length,
                                  (index) => Container(
                                    height: MediaQuery.of(context).size.height *
                                        15 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        90 /
                                        100,
                                    child: Row(
                                      children: [
                                        Stack(
                                          children: [
                                            Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  23 /
                                                  100,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  40 /
                                                  100,
                                              child: Image.asset(
                                                series2list[index]["image"],
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Positioned(
                                                top: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    4 /
                                                    100,
                                                right: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    17 /
                                                    100,
                                                child: Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      5 /
                                                      100,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      5 /
                                                      100,
                                                  child: Image.asset(
                                                      AppImage.playIcon),
                                                ))
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              2 /
                                              100,
                                        ),
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              25 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              45 /
                                              100,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    1 /
                                                    100,
                                              ),
                                              Text(
                                                series2list[index]["name"],
                                                maxLines: 1,
                                                style: const TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontSize: 15,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5 /
                                                    100,
                                              ),
                                              Container(
                                                  child: Text(
                                                series2list[index]["text"],
                                                maxLines: 2,
                                                style: const TextStyle(
                                                    color:
                                                        AppColor.greyLightColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontSize: 11,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              )),
                                              Text(series2list[index]["text1"],
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                      decoration: TextDecoration
                                                          .underline,
                                                      decorationColor:
                                                          AppColor.themeColor1,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontSize: 10,
                                                      color:
                                                          AppColor.themeColor1,
                                                      fontWeight:
                                                          FontWeight.w500))
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ]),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ]))));
  }
}
