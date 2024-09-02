import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_footer.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/notification_comment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Announcements extends StatefulWidget {
  static String routeName = './Announcements';
  const Announcements({super.key});

  @override
  State<Announcements> createState() => _AnnouncementsState();
}

class _AnnouncementsState extends State<Announcements> {
  List<dynamic> announcement = <dynamic>[
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
  List<dynamic> announcement2 = <dynamic>[
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
    }
  ];
  int isclick = 0;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return WillPopScope(
      onWillPop: () {
        // _showAlertDialog(context);
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: AppColor.secondryColor,
        body: SafeArea(
            // ignore: sized_box_for_whitespace
            child: Container(
          width: MediaQuery.of(context).size.width * 100 / 100,
          height: MediaQuery.of(context).size.height * 100 / 100,
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 4.5 / 100,
              ),
              //==================== header===========================
              Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
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
                        textAlign: TextAlign.center,
                        AppLanguage.announcementsText[language],
                        style: AppConstant.appBarTitleStyle,
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.width * 5 / 100,
                      width: MediaQuery.of(context).size.width * 5 / 100,
                      child: Image.asset(
                        AppImage.bellIcon,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 3 / 100,
              ),
              //====================scroll===========================
              Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            alignment: Alignment.center,
                              color:AppColor.secondryColor,
                              width: MediaQuery.of(context).size.width * 45 / 100,
                            child: Text(
                              AppLanguage.mostrecentText[language],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isclick == 0
                                    ? AppColor.primaryColor
                                    : AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 20 / 100,
                            height:
                                MediaQuery.of(context).size.height * 0.2 / 100,
                            color: isclick == 0
                                ? AppColor.primaryColor
                                : AppColor.secondryColor,
                          )
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
                             alignment: Alignment.center,
                              color:AppColor.secondryColor,
                              width: MediaQuery.of(context).size.width * 45/ 100,
                            child: Text(
                              AppLanguage.mostlikeText[language],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: isclick == 1
                                    ? AppColor.primaryColor
                                    : AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 1 / 100,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 20 / 100,
                            height:
                                MediaQuery.of(context).size.height * 0.2 / 100,
                            color: isclick == 1
                                ? AppColor.primaryColor
                                : AppColor.secondryColor,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              //====================scroll end===========================
              SizedBox(
                height: MediaQuery.of(context).size.height * 5 / 100,
              ),
              //====================list===========================
              if (isclick == 0)
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Wrap(direction: Axis.vertical, children: [
                      ...List.generate(
                        announcement.length,
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
                                                      announcement[index]
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
                                          announcement[index]["name"],
                                          maxLines: 1,
                                          style: const TextStyle(
                                              color: AppColor.primaryColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      announcement[index]["time"],
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: AppColor.greyLightColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 14,
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
                                  announcement[index]["text"],
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
                                              text: announcement[index]
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
                                              text: announcement[index]
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
                                            announcement[index]["image1"],
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const AnnouncementComment()));
                                          },
                                          child: Container(
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
                                              announcement[index]["image2"],
                                            ),
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
                                            announcement[index]["image3"],
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
                                            announcement[index]["image4"],
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
                ),
              if (isclick == 1)
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Wrap(direction: Axis.vertical, children: [
                      ...List.generate(
                        announcement2.length,
                        (index) => Container(
                          width: MediaQuery.of(context).size.width * 85 / 100,
                          height: MediaQuery.of(context).size.height * 25 / 100,
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
                                                      announcement2[index]
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
                                          announcement2[index]["name"],
                                          maxLines: 1,
                                          style: const TextStyle(
                                              color: AppColor.primaryColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      announcement2[index]["time"],
                                      maxLines: 1,
                                      style: const TextStyle(
                                          color: AppColor.greyLightColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 14,
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
                                  announcement2[index]["text"],
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
                                              text: announcement[index]
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
                                              text: announcement[index]
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
                                            announcement2[index]["image1"],
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
                                            announcement2[index]["image2"],
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
                                            announcement2[index]["image3"],
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
                                            announcement2[index]["image4"],
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
            selectedMenu: BottomMenus.announcements, notificationCount: 0),
      ),
    );
  }

   
}
