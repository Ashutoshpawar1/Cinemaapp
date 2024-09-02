import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/addon_playlist.dart';
import 'package:cinemaapp/view/otherpages/movies1.dart';
import 'package:cinemaapp/view/otherpages/series1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Profile1 extends StatefulWidget {
  static String routeName = './Profile1';
  const Profile1({super.key});

  @override
  State<Profile1> createState() => _Profile1State();
}

class _Profile1State extends State<Profile1> {
  List<dynamic> profile = <dynamic>[
    {"id": 1, "name": "Recent Uploads"},
    {"id": 2, "name": "Movies"},
    {"id": 3, "name": "Series"},
    {"id": 4, "name": "Announcement"},
  ];
  List<dynamic> recentupload = <dynamic>[
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k",
      "dot": "./assets/icons/icon_threedot.png"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k",
      "dot": "./assets/icons/icon_threedot.png"
    },
  ];
  List<dynamic> movieslist = <dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
  ];
  List<dynamic> serieslist = <dynamic>[
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
      "image": "./assets/icons/image_avengers.jpg",
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
  ];

  List<dynamic> announcementlist = <dynamic>[
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14 ",
      "image1": "./assets/icons/icon_thumbbox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_sharebox.png",
      "image4": "./assets/icons/icon_bookmarkbox.png",
    },
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32 ",
      "comment": "14 ",
      "image1": "./assets/icons/icon_thumbbox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_sharebox.png",
      "image4": "./assets/icons/icon_bookmarkbox.png",
    },
    {
      "profile": "./assets/icons/image_profile1.jpg",
      "time": "20m ago",
      "text":
          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
      "like": "32",
      "comment": "14 ",
      "image1": "./assets/icons/icon_thumbbox.png",
      "image2": "./assets/icons/icon_comments.png",
      "image3": "./assets/icons/icon_sharebox.png",
      "image4": "./assets/icons/icon_bookmarkbox.png",
    }
  ];

  bool isclick = true;
  bool tap = true;
  bool click = false;
  int isTap = 1;
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
                    height: MediaQuery.of(context).size.height * 100 / 100,
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    child: Column(children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 4 / 100,
                      ),
                      //============================header================================
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
                              "Sophia William",
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container()
                          ],
                        ),
                      ),
                      //============================header END================================
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      Center(
                        child: Container(
                          height: MediaQuery.of(context).size.width * 30 / 100,
                          width: MediaQuery.of(context).size.width * 30 / 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              image: const DecorationImage(
                                  image: AssetImage(AppImage.profilrgirlImage),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Text(
                            "1.1 k " + AppLanguage.followersText[language],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w700,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1 / 100,
                      ),

                      GestureDetector(
                        onTap: () {
                          describeprofile(context);
                        },
                        child: Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text:
                                      """Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque...""",
                                  style: TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 12),
                                  children: <TextSpan>[
                                    TextSpan(
                                        text: "See More",
                                        style: TextStyle(
                                            decoration:
                                                TextDecoration.underline,
                                            decorationColor:
                                                AppColor.themeColor1,
                                            fontFamily: AppFont.fontFamily,
                                            fontSize: 10,
                                            color: AppColor.themeColor1,
                                            fontWeight: FontWeight.w500))
                                  ]),
                            )),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      Container(
                        // color: Colors.red,
                        height: MediaQuery.of(context).size.height * 5 / 100,
                        width: MediaQuery.of(context).size.width * 50 / 100,
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isclick = !isclick;
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              if (isclick == true)
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          25 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              4 /
                                              100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        border: const GradientBoxBorder(
                                          gradient: LinearGradient(colors: [
                                            AppColor.redcolor,
                                            AppColor.pinkcolor,
                                            AppColor.lpinkcolor,
                                            AppColor.mbluecolor,
                                            AppColor.lbluecolor,
                                          ]),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            AppLanguage.followText[language],
                                            style: const TextStyle(
                                                color: AppColor.themeColor1,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1 /
                                                100,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                3 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                3 /
                                                100,
                                            child: Image.asset(
                                                AppImage.profileaddIcon),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          9 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              9 /
                                              100,
                                      child:
                                          Image.asset(AppImage.disablebellIcon),
                                    ),
                                  ],
                                ),
                              if (isclick == false)
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          25 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              4 /
                                              100,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(60),
                                        border: const GradientBoxBorder(
                                          gradient: LinearGradient(colors: [
                                            AppColor.redcolor,
                                            AppColor.pinkcolor,
                                            AppColor.lpinkcolor,
                                            AppColor.mbluecolor,
                                            AppColor.lbluecolor,
                                          ]),
                                        ),
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            AppLanguage.unfollowText[language],
                                            style: const TextStyle(
                                                color: AppColor.themeColor1,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                1 /
                                                100,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                3 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                3 /
                                                100,
                                            child: Image.asset(
                                                AppImage.profileaddIcon),
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          9 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              9 /
                                              100,
                                      child:
                                          Image.asset(AppImage.enablebellIcon),
                                    ),
                                  ],
                                )
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),

                      //-----------------------scroll------------------------
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Wrap(children: [
                          ...List.generate(
                            profile.length,
                            (index) => Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      isTap = profile[index]["id"];
                                    });
                                  },
                                  child: Container(
                                    color: AppColor.secondryColor,
                                    width: MediaQuery.of(context).size.width *
                                        30 /
                                        100,
                                    child: Text(
                                      profile[index]["name"],
                                      style: TextStyle(
                                          color: (isTap == profile[index]["id"])
                                              ? AppColor.primaryColor
                                              : AppColor.greyLightColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 12),
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  height: MediaQuery.of(context).size.height *
                                      0.2 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      16 /
                                      100,
                                  alignment: Alignment.center,
                                  color: (isTap == profile[index]["id"])
                                      ? AppColor.primaryColor
                                      : AppColor.secondryColor,
                                )
                              ],
                            ),
                          )
                        ]),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      //==========================recent upload=======================
                      if (isTap == 1)
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Wrap(direction: Axis.vertical, children: [
                              ...List.generate(
                                recentupload.length,
                                (index) => Column(
                                  children: [
                                    Stack(
                                      children: [
                                        Container(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              27 /
                                              100,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              100 /
                                              100,
                                          color: AppColor.secondryColor,
                                          child: Image.asset(
                                            recentupload[index]["image"],
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Positioned(
                                            top: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                10 /
                                                100,
                                            left: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                45 /
                                                100,
                                            child: Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  12 /
                                                  100,
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  12 /
                                                  100,
                                              child: Image.asset(
                                                  AppImage.playIcon),
                                            ))
                                      ],
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1 /
                                              100,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              6 /
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
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            recentupload[index]
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
                                              Column(
                                                children: [
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            30 /
                                                            100,
                                                    child: Text(
                                                      recentupload[index]
                                                          ["name"],
                                                      maxLines: 1,
                                                      style: const TextStyle(
                                                          color: AppColor
                                                              .primaryColor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            30 /
                                                            100,
                                                    child: Text(
                                                        recentupload[index]
                                                            ["date"],
                                                        maxLines: 1,
                                                        style: const TextStyle(
                                                          color: AppColor
                                                              .greyLightColor,
                                                          fontSize: 11,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                        )),
                                                  ),
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
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                    child: Image.asset(
                                                      recentupload[index]
                                                          ["eye"],
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1 /
                                                            100,
                                                  ),
                                                  Container(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            8 /
                                                            100,
                                                    child: Text(
                                                        recentupload[index]
                                                            ["like"],
                                                        maxLines: 1,
                                                        style: const TextStyle(
                                                          color: AppColor
                                                              .primaryColor,
                                                          fontSize: 11,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                        )),
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    2 /
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
                                                    recentupload[index]["dot"],
                                                  ),
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

                      //==========================movies list=======================
                      if (isTap == 2)
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Wrap(
                              children: [
                                ...List.generate(
                                  movieslist.length,
                                  (index) => GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Movies1()));
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              25 /
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
                                                      movieslist[index]
                                                          ["image"],
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                30 /
                                                100,
                                            child: Text(
                                              movieslist[index]["name"],
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: AppColor.themeColor1,
                                                  fontFamily:
                                                      AppFont.fontFamily,
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
                                              movieslist[index]["text"],
                                              textAlign: TextAlign.center,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
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
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      //==========================series list=======================
                      if (isTap == 3)
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Wrap(
                              children: [
                                ...List.generate(
                                  serieslist.length,
                                  (index) => GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Series1()));
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              25 /
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
                                                      serieslist[index]
                                                          ["image"],
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
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                30 /
                                                100,
                                            child: Text(
                                              serieslist[index]["name"],
                                              textAlign: TextAlign.center,
                                              style: const TextStyle(
                                                  color: AppColor.themeColor1,
                                                  fontFamily:
                                                      AppFont.fontFamily,
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
                                              serieslist[index]["text"],
                                              textAlign: TextAlign.center,
                                              maxLines: 2,
                                              style: const TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
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
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),

                      // ======================anouncement list===================
                      if (isTap == 4)
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Wrap(direction: Axis.vertical, children: [
                              ...List.generate(
                                announcementlist.length,
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
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
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
                                                              announcementlist[
                                                                      index]
                                                                  ["profile"]),
                                                          fit: BoxFit.cover)),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              announcementlist[index]["time"],
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  color:
                                                      AppColor.greyLightColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                85 /
                                                100,
                                        child: Text(
                                          announcementlist[index]["text"],
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
                                        width:
                                            MediaQuery.of(context).size.width *
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
                                                      text: announcementlist[
                                                          index]["like"],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              AppColor.redcolor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w500),
                                                      children: <TextSpan>[
                                                        TextSpan(
                                                          text: AppLanguage
                                                                  .likeText[
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
                                                RichText(
                                                  text: TextSpan(
                                                      text: announcementlist[
                                                          index]["comment"],
                                                      style: TextStyle(
                                                          fontSize: 12,
                                                          color:
                                                              AppColor.redcolor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
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
                                              children: [
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
                                                    announcementlist[index]
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
                                                    announcementlist[index]
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
                                                    announcementlist[index]
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
                                                    announcementlist[index]
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

// =============this popup for profile description=============
  describeprofile(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        useRootNavigator: false,
        isDismissible: false,
        enableDrag: false,
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.5),
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 13 / 100,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 85 / 100,
                    width: MediaQuery.of(context).size.width * 85 / 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: AppColor.secondryColor,
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                        Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                            child: Column(
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      75 /
                                      100,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet consectetur. Neque odio blandit mauris duis ullamcorper amet vestibulum. Blandit metus nec venenatis et ultrices scelerisque. Elementum leo odio in faucibus eget odio interdum. Rhoncus volutpat vel blandit imperdiet urna integer. Mi tristique nulla tristique consequat. Faucibus amet sit cras posuere orci sed justo. Proin velit turpis blandit proin faucibus.",
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      75 /
                                      100,
                                  child: Text(
                                    "Lorem ipsum dolor sit amet consectetur. Neque odio blandit mauris duis ullamcorper amet vestibulum. Blandit metus nec venenatis et ultrices scelerisque. Elementum leo odio in faucibus eget odio interdum. Rhoncus volutpat vel blandit imperdiet urna integer. Mi tristique nulla tristique consequat. Faucibus amet sit cras posuere orci sed justo. Proin velit turpis blandit proin faucibus.amet vestibulum. Blandit metus nec venenatis et ultrices scelerisque. Elementum leo odio in faucibus eget odio interdum. Rhoncus volutpat vel blandit imperdiet urna integer. Mi tristique nulla tristique consequat. Faucibus amet sit cras posuere orci sed justo. Proin velit turpis blandit proin faucibus.sdfahhhhhhbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbbscvxcv",
                                    style: const TextStyle(
                                        color: AppColor.primaryColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 75 / 100,
                          child: Text(AppLanguage.reachusText[language],
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 75 / 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                child: Image.asset(AppImage.mailframeIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                child: Image.asset(AppImage.fbframelIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                child:
                                    Image.asset(AppImage.instagramframelIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                child: Image.asset(AppImage.twitterframeIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 9 / 100,
                                child: Image.asset(AppImage.tiktokframeIcon),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(AppLanguage.backText[language],
                              style: const TextStyle(
                                  color: AppColor.redcolor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13)),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            );
          }));
        });
  }

// =============this popup for( 3dot ) description  ============

  saveshareprofile(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        useRootNavigator: false,
        isDismissible: false,
        enableDrag: false,
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
                                  //=========save test=================
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const Addonplaylist()));
                                        setState(() {
                                          click = false;
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          if (click == false)
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: AppColor.themeColor1,
                                              ),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  6 /
                                                  100,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  75 /
                                                  100,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                    child: Image.asset(AppImage
                                                        .bookmarkwhiteIcon),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            2 /
                                                            100,
                                                  ),
                                                  Text(
                                                      AppLanguage
                                                          .saveText[language],
                                                      style: const TextStyle(
                                                          color: AppColor
                                                              .secondryColor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 13))
                                                ],
                                              ),
                                            ),
                                          if (click == true)
                                            Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10),
                                                color: AppColor.themeColor1,
                                              ),
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  6 /
                                                  100,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  75 /
                                                  100,
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            4 /
                                                            100,
                                                    child: Image.asset(AppImage
                                                        .bookmarkwhiteIcon),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            2 /
                                                            100,
                                                  ),
                                                  Text(
                                                      AppLanguage
                                                              .watchlaterText[
                                                          language],
                                                      style: const TextStyle(
                                                          color: AppColor
                                                              .secondryColor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          fontSize: 13))
                                                ],
                                              ),
                                            ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        2 /
                                        100,
                                  ),
                                  //=========share test=================

                                  GestureDetector(
                                    onTap: () {
                                      //this is for share bottomsheet
                                      sharebottomsheet(context);
                                      // Navigator.pop(context);
                                    },
                                    child: Container(
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: AppColor.themeColor1,
                                      ),
                                      height:
                                          MediaQuery.of(context).size.height *
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
                                                AppImage.sharewhiteIcon),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                2 /
                                                100,
                                          ),
                                          Text(AppLanguage.shareText[language],
                                              style: const TextStyle(
                                                  color: AppColor.secondryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 13))
                                        ],
                                      ),
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

// =============this popup for share (insta, fb,)=============
  sharebottomsheet(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        useRootNavigator: false,
        isDismissible: false,
        enableDrag: false,
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.5),
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return Container(
                height: MediaQuery.of(context).size.height * 25 / 100,
                width: MediaQuery.of(context).size.width * 100 / 100,
                decoration: const BoxDecoration(
                    color: AppColor.secondryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 20 / 100,
                        height: MediaQuery.of(context).size.height * 0.2 / 100,
                        color: AppColor.greyLightColor,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 3 / 100,
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 20 / 100,
                      //  height: MediaQuery.of(context).size.height * 0.5 / 100,
                      child: Text(AppLanguage.shareText[language],
                          style: const TextStyle(
                              color: AppColor.greyLightColor,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 5 / 100,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 80 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 15 / 100,
                            height:
                                MediaQuery.of(context).size.width * 15 / 100,
                            child: Image.asset(AppImage.mailframeIcon),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 15 / 100,
                            height:
                                MediaQuery.of(context).size.width * 15 / 100,
                            child: Image.asset(AppImage.fbframelIcon),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 15 / 100,
                            height:
                                MediaQuery.of(context).size.width * 15 / 100,
                            child: Image.asset(AppImage.instagramframelIcon),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 15 / 100,
                            height:
                                MediaQuery.of(context).size.width * 15 / 100,
                            child: Image.asset(AppImage.twitterframeIcon),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 15 / 100,
                            height:
                                MediaQuery.of(context).size.width * 15 / 100,
                            child: Image.asset(AppImage.tiktokframeIcon),
                          ),
                        ],
                      ),
                    )
                  ],
                ));
          }));
        });
  }
}
