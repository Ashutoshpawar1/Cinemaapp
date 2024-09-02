import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Archive extends StatefulWidget {
  const Archive({super.key});
  static String routeName = './Archive';
  @override
  State<Archive> createState() => _ArchiveState();
}

class _ArchiveState extends State<Archive> {
  List<dynamic> videolist = <dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k",
      "dot": "./assets/icons/icon_threedot.png"
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k",
      "dot": "./assets/icons/icon_threedot.png"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
     
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k",
      "dot": "./assets/icons/icon_threedot.png"
    },
  ];

  List<dynamic> anouncementlist = <dynamic>[
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Spophia William",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14",
      "image1": "./assets/icons/icon_redthumbBox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_leftshare.png",
      "image4": "./assets/icons/icon_deleteBox.png",
    },
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Spophia William",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14",
      "image1": "./assets/icons/icon_redthumbBox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_leftshare.png",
      "image4": "./assets/icons/icon_deleteBox.png",
    },
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Spophia William",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14",
      "image1": "./assets/icons/icon_redthumbBox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_leftshare.png",
      "image4": "./assets/icons/icon_deleteBox.png",
    },
  ];

  bool status = false;
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
                child: Column(
                  children: [
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
                          width: MediaQuery.of(context).size.width * 10 / 100,
                          child: Container(
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.backIcon),
                          ),
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        width: MediaQuery.of(context).size.width * 70 / 100,
                        child: Text(
                          AppLanguage.archiveText[language],
                          style: AppConstant.appBarTitleStyle,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 10 / 100,
                      )
                    ],
                  ),
                ),

                //============================header END================================
                 
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 5 / 100,
                    ),
                    //====================scroll===========================
                    Container(
                      width: MediaQuery.of(context).size.width * 60 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                status = false;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  AppLanguage.videosText[language],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: status == false
                                        ? AppColor.primaryColor
                                        : AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      15 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      0.2 /
                                      100,
                                  color: status == false
                                      ? AppColor.primaryColor
                                      : AppColor.secondryColor,
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                status = true;
                              });
                            },
                            child: Column(
                              children: [
                                Text(
                                  AppLanguage.announcementsText[language],
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    color: status == true
                                        ? AppColor.primaryColor
                                        : AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      15 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      0.2 /
                                      100,
                                  color: status == true
                                      ? AppColor.primaryColor
                                      : AppColor.secondryColor,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    //====================scroll end=======================
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 3 / 100,
                    ),
                    //====================List videos========================
                    if (status == false)
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Wrap(direction: Axis.horizontal, children: [
                            ...List.generate(
                              videolist.length,
                              // ignore: avoid_unnecessary_containers
                              (index) => Column(
                                children: [
                                  Stack(
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                26 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                100 /
                                                100,
                                        color: AppColor.secondryColor,
                                        child: Image.asset(
                                          videolist[index]["image"],
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                     Positioned(
                                      top: MediaQuery.of(context).size.height *
                                          9 /
                                          100,
                                      left:
                                          MediaQuery.of(context).size.width *
                                              45 /
                                              100,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                12 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                12 /
                                                100,
                                        child: Image.asset(AppImage.playIcon),
                                      ))
                                    ],
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        7 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        90 /
                                        100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                         
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      50 /
                                                      100,
                                                  child: Text(
                                                    videolist[index]["name"],
                                                    maxLines: 1,
                                                    style: const TextStyle(
                                                        color: AppColor
                                                            .primaryColor,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontSize: 14,
                                                        fontWeight:
                                                            FontWeight.w600),
                                                  ),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      50 /
                                                      100,
                                                  child: Text(
                                                      videolist[index]
                                                          ["date"],
                                                      maxLines: 1,
                                                      style: const TextStyle(
                                                        color: AppColor
                                                            .greyLightColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                      )),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Row(
                                              children: [
                                                Container(
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      4 /
                                                      100,
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      4/
                                                      100,
                                                  child: Image.asset(
                                                      videolist[index]
                                                          ["eye"]),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      2 /
                                                      100,
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      8 /
                                                      100,
                                                  child: Text(
                                                    videolist[index]["like"],
                                                    maxLines: 1,
                                                     style: const TextStyle(
                                                        color: AppColor
                                                            .primaryColor,
                                                        fontSize: 12,
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                      )


                                                  ),
                                                )
                                              ],
                                            ),
                                            SizedBox(
                                               width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    4 /
                                                    100,
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                saveshareprofile(context);
                                              },
                                              child: Container(
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
                                                child: Image.asset(
                                                    videolist[index]["dot"]),
                                              ),
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ]),
                        ),
                      ),

                    //====================List videos end====================

                    //=====================List Announcement==================
                    if (status == true)
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
                                                  color: AppColor.redcolor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w500),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: AppLanguage
                                                      .likeText[language],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          AppColor.primaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500),
                                                )
                                              ]),
                                        ),
                                        RichText(
                                          text: TextSpan(
                                              text: anouncementlist[index]
                                                  ["comment"],
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: AppColor.redcolor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w500),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: AppLanguage
                                                      .repliesText[language],
                                                  style: TextStyle(
                                                      fontSize: 12,
                                                      color:
                                                          AppColor.primaryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500),
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
                  ],
                ))));
  }

// =============this popup for save share=============

  saveshareprofile(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.5),
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 100 / 100,
                  height: MediaQuery.of(context).size.height * 100 / 100,
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 40 / 100,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 20 / 100,
                          width: MediaQuery.of(context).size.width * 85 / 100,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: AppColor.secondryColor,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        3 /
                                        100,
                                  ),
                                  //=========Reset test=================
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.themeColor1,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        6 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        75 /
                                        100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
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
                                          child: Image.asset(
                                              AppImage.whitearrowIcon),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              2 /
                                              100,
                                        ),
                                        Text(AppLanguage.resetText[language],
                                            style: const TextStyle(
                                                color: AppColor.secondryColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13))
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        2 /
                                        100,
                                  ),
                                  //=========delete test=================
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: AppColor.themeColor1,
                                    ),
                                    height: MediaQuery.of(context).size.height *
                                        6 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        75 /
                                        100,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
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
                                          child: Image.asset(
                                              AppImage.whitedeleteIcon),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              2 /
                                              100,
                                        ),
                                        Text(AppLanguage.deleteText[language],
                                            style: const TextStyle(
                                                color: AppColor.secondryColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height * 37 / 100,
                    right: MediaQuery.of(context).size.height * 3.5 / 100,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 7 / 100,
                        child: Image.asset(AppImage.cancleIcon),
                      ),
                    ))
              ],
            );
          }));
        });
  }
}
