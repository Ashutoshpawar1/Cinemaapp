import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AnnouncementSaved extends StatefulWidget {
  static String routeName = './AnnouncementSaved';
  const AnnouncementSaved({super.key});

  @override
  State<AnnouncementSaved> createState() => _AnnouncementSavedState();
}

class _AnnouncementSavedState extends State<AnnouncementSaved> {
  List<dynamic> anouncementlist = <dynamic>[
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Spophia William",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14 ",
      "image1": "./assets/icons/icon_redthumbBox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_sharebox.png",
      "image4": "./assets/icons/icon_redboomarkr.png",
    },
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Spophia William",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14 ",
      "image1": "./assets/icons/icon_redthumbBox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_sharebox.png",
      "image4": "./assets/icons/icon_redboomarkr.png",
    },
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Spophia William",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14 ",
      "image1": "./assets/icons/icon_redthumbBox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_sharebox.png",
      "image4": "./assets/icons/icon_redboomarkr.png",
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
                        width: MediaQuery.of(context).size.width * 95 / 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                width: MediaQuery.of(context).size.width *
                                    10 /
                                    100,
                                child: Container(
                                  height: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  child: Image.asset(AppImage.backIcon),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width:
                                  MediaQuery.of(context).size.width * 70 / 100,
                              child: Text(
                                AppLanguage.announcementsText[language],
                                style: AppConstant.appBarTitleStyle,
                              ),
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 10 / 100,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 7 / 100,
                      ),

                      //============================header END================================

                      //===================announcement list=================================
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Wrap(direction: Axis.vertical, children: [
                            ...List.generate(
                              anouncementlist.length,
                              (index) => Container(
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    22 /
                                    100,
                                child: Column(
                                  children: [
                                    Container(
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    7 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    7 /
                                                    100,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            anouncementlist[
                                                                    index]
                                                                ["profile"]),
                                                        fit: BoxFit.cover)),
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    2 /
                                                    100,
                                              ),
                                              Text(
                                                anouncementlist[index]["name"],
                                                maxLines: 1,
                                                style: const TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontSize: 14,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                            ],
                                          ),
                                          Text(
                                            anouncementlist[index]["time"],
                                            maxLines: 1,
                                            style: const TextStyle(
                                                color: AppColor.greyLightColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1 /
                                              100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          85 /
                                          100,
                                      child: Text(
                                        anouncementlist[index]["text"],
                                        maxLines: 3,
                                        style: const TextStyle(
                                            color: AppColor.primaryColor,
                                            fontFamily: AppFont.fontFamily,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1 /
                                              100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          85 /
                                          100,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              RichText(
                                                text: TextSpan(
                                                    text: anouncementlist[index]
                                                        ["like"],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color:
                                                            AppColor.redcolor,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: AppLanguage
                                                            .likeText[language],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: AppColor
                                                                .primaryColor,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )
                                                    ]),
                                              ),
                                              RichText(
                                                text: TextSpan(
                                                    text: anouncementlist[index]
                                                        ["comment"],
                                                    style: TextStyle(
                                                        fontSize: 12,
                                                        color:
                                                            AppColor.redcolor,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                    children: <TextSpan>[
                                                      TextSpan(
                                                        text: AppLanguage
                                                                .repliesText[
                                                            language],
                                                        style: TextStyle(
                                                            fontSize: 12,
                                                            color: AppColor
                                                                .primaryColor,
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      )
                                                    ]),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    12 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                child: Image.asset(
                                                  anouncementlist[index]
                                                      ["image1"],
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                child: Image.asset(
                                                  anouncementlist[index]
                                                      ["image2"],
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                child: Image.asset(
                                                  anouncementlist[index]
                                                      ["image3"],
                                                ),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    10 /
                                                    100,
                                                child: Image.asset(
                                                  anouncementlist[index]
                                                      ["image4"],
                                                ),
                                              )
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            )
                          ]),
                        ),
                      )
                    ])))));
  }
}
