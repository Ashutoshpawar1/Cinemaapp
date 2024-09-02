import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/authentication/edit_profile_screen.dart';
import 'package:cinemaapp/view/authentication/setting_screen.dart';
import 'package:cinemaapp/view/otherpages/followers.dart';
import 'package:cinemaapp/view/otherpages/history.dart';
import 'package:cinemaapp/view/otherpages/saved.dart';
import 'package:cinemaapp/view/otherpages/upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_constant.dart';
import '../../utilities/app_footer.dart';

class Profile extends StatefulWidget {
  static String routeName = './Profile';
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  List<dynamic> profile = <dynamic>[
    {"id": 1, "name": "Recent Uploads"},
    {"id": 2, "name": "Movies"},
    {"id": 3, "name": "Series"},
    {"id": 4, "name": "Announcements"},
  ];
  List<dynamic> recentupload = <dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
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

  List<dynamic> movieslist = <dynamic>[
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
      "name": "Spophia William",
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
      "name": "Spophia William",
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
      "name": "Spophia William",
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

  int isclick = 0;
  int isTap = 1;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return WillPopScope(
      onWillPop: () {
        _showAlertDialog(context);
        return Future.value(false);
      },
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
              //==================== header===========================
              Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 6 / 100,
                      width: MediaQuery.of(context).size.width * 5 / 100,
                      // child: Image.asset(AppImage.backIcon),
                    ),
                    Text(
                      AppLanguage.charlieText[language],
                      maxLines: 1,
                      style: AppConstant.appBarTitleStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Setting()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.width * 6 / 100,
                        width: MediaQuery.of(context).size.width * 6 / 100,
                        child: Image.asset(
                          AppImage.settingIcon,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              //==================== header end ===========================

              SizedBox(
                height: MediaQuery.of(context).size.height * 4 / 100,
              ),
              Center(
                child: Container(
                  height: MediaQuery.of(context).size.width * 30 / 100,
                  width: MediaQuery.of(context).size.width * 30 / 100,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          image: AssetImage(AppImage.profileImage),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),

              Container(
                width: MediaQuery.of(context).size.width * 80 / 100,
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Followers()));
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 40 / 100,
                       alignment: Alignment.center,
                        child: Text(
                          "124 " + AppLanguage.followersText[language],
                          maxLines: 1,
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w700,
                              fontSize: 17),
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      width: MediaQuery.of(context).size.width * 40 / 100,
                      child: Text(
                        "201 " + AppLanguage.follwText[language],
                        maxLines: 1,
                        style: const TextStyle(
                            color: AppColor.primaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w700,
                            fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 1 / 100,
              ),

              Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: RichText(
                    textAlign: TextAlign.center,
                    text: TextSpan(
                        text:
                            """Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor 
      scelerisque... """,
                        // textAlign: TextAlign.center,
                        style: TextStyle(
                            color: AppColor.primaryColor,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w400,
                            fontSize: 13),
                        children: <TextSpan>[
                          TextSpan(
                              text: "See More",
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  decorationColor: AppColor.themeColor1,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 10,
                                  color: AppColor.themeColor1,
                                  fontWeight: FontWeight.w500))
                        ]),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height * 3 / 100,
              ),
              Container(
                width: MediaQuery.of(context).size.width * 80 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Upload()));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 6 / 100,
                            height: MediaQuery.of(context).size.width * 6 / 100,
                            child: Image.asset(AppImage.uploadIcon),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          Text(
                            AppLanguage.uploadText[language],
                            style: const TextStyle(
                                color: AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 11),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const EditProfile()));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 6 / 100,
                            height: MediaQuery.of(context).size.width * 6 / 100,
                            child: Image.asset(AppImage.editprofilIcon),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          Text(
                            AppLanguage.editProfile[language],
                            style: const TextStyle(
                                color: AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 11),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Saved()));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.bookmarkIcon),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          Text(
                            AppLanguage.savedText[language],
                            style: const TextStyle(
                                color: AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 11),
                          )
                        ],
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const History()));
                      },
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 6 / 100,
                            height: MediaQuery.of(context).size.width * 6 / 100,
                            child: Image.asset(AppImage.historyIcon),
                          ),
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          Text(
                            AppLanguage.historyText[language],
                            style: const TextStyle(
                                color: AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 11),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 3 / 100,
              ),
              //-----------------------scroll------------------------
              Container(
                // color:Colors.red,
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: SingleChildScrollView(
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
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              child: Text(
                                profile[index]["name"],
                                style: TextStyle(
                                    color: (isTap == profile[index]["id"])
                                        ? AppColor.primaryColor
                                        : AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 12),
                                // "movies",

                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 0.2 / 100,
                            width: MediaQuery.of(context).size.width * 16 / 100,
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
                                  height: MediaQuery.of(context).size.height *
                                      25 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      100 /
                                      100,
                                  color: AppColor.secondryColor,
                                  child: Image.asset(
                                    recentupload[index]["image"],
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Positioned(
                                    top: MediaQuery.of(context).size.height *
                                        10 /
                                        100,
                                    left: MediaQuery.of(context).size.width *
                                        45 /
                                        100,
                                    child: Container(
                                      width: MediaQuery.of(context).size.width *
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
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.height * 6 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
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
                                              recentupload[index]["name"],
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                50 /
                                                100,
                                            child: Text(
                                                recentupload[index]["date"],
                                                maxLines: 1,
                                                style: const TextStyle(
                                                  color:
                                                      AppColor.greyLightColor,
                                                  fontSize: 10,
                                                  fontWeight: FontWeight.w500,
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
                                                4 /
                                                100,
                                            child: Image.asset(
                                              recentupload[index]["eye"],
                                            ),
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
                                                8 /
                                                100,
                                            child: Text(
                                                recentupload[index]["like"],
                                                maxLines: 1,
                                                style: const TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontSize: 13,
                                                  fontWeight: FontWeight.w500,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                )),
                                          )
                                        ],
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                3 /
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
                          (index) => Container(
                            height:
                                MediaQuery.of(context).size.height * 24 / 100,
                            width: MediaQuery.of(context).size.width * 45 / 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            movieslist[index]["image"],
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  child: Text(
                                    movieslist[index]["name"],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: AppColor.themeColor1,
                                        fontFamily: AppFont.fontFamily,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  child: Text(
                                    movieslist[index]["text"],
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
                                  height: MediaQuery.of(context).size.height *
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
                          (index) => Container(
                            height:
                                MediaQuery.of(context).size.height * 24 / 100,
                            width: MediaQuery.of(context).size.width * 45 / 100,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  alignment: Alignment.center,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(60),
                                      image: DecorationImage(
                                          image: AssetImage(
                                            serieslist[index]["image"],
                                          ),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      1 /
                                      100,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  child: Text(
                                    serieslist[index]["name"],
                                    textAlign: TextAlign.center,
                                    style: const TextStyle(
                                        color: AppColor.themeColor1,
                                        fontFamily: AppFont.fontFamily,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      30 /
                                      100,
                                  child: Text(
                                    serieslist[index]["text"],
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
                                  height: MediaQuery.of(context).size.height *
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
                          width: MediaQuery.of(context).size.width * 85 / 100,
                          height: MediaQuery.of(context).size.height * 22 / 100,
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
                                                  BorderRadius.circular(50),
                                              image: DecorationImage(
                                                  image: AssetImage(
                                                      announcementlist[index]
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
                                          announcementlist[index]["name"],
                                          style: const TextStyle(
                                              color: AppColor.primaryColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      announcementlist[index]["time"],
                                      style: const TextStyle(
                                          color: AppColor.greyLightColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
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
                                height: MediaQuery.of(context).size.height *
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
                                              text: announcementlist[index]
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
                                              text: announcementlist[index]
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
                                            announcementlist[index]["image1"],
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
                                            announcementlist[index]["image2"],
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
                                            announcementlist[index]["image3"],
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
                                            announcementlist[index]["image4"],
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
          ),
        )),
        bottomNavigationBar: const AppFooter(
            selectedMenu: BottomMenus.profile, notificationCount: 2),
      ),
    );
  }

// =============this popup for save share=============

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
                          height: MediaQuery.of(context).size.height * 30 / 100,
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

                                  //=========share test=================
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

                                  //=========Archive test=================
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
                                              AppImage.uploadfileIcon),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              2 /
                                              100,
                                        ),
                                        Text(AppLanguage.archiveText[language],
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
                                  //=========Delete test=================
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
                    top: MediaQuery.of(context).size.height * 37.5 / 100,
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

//===============backhandler===============

  _showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: const Text(
        "No",
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Yes", style: TextStyle(color: Colors.black)),
      onPressed: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.areYouSureText[language]),
      content: Text(AppLanguage.exitAppText[language]),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
