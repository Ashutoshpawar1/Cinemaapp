import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/view/authentication/notifiction_screen.dart';
import 'package:cinemaapp/view/otherpages/profile1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_footer.dart';
import '../../utilities/app_language.dart';

class Home extends StatefulWidget {
  static String routeName = './Home';

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }

  List<dynamic> home = <dynamic>[
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2 k",
      "dot": "./assets/icons/icon_threedot.png"
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "profile": "./assets/icons/image_profile2.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2 k",
      "dot": "./assets/icons/icon_threedot.png"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2 k",
      "dot": "./assets/icons/icon_threedot.png"
    }
  ];
  List<dynamic> mostpopular = <dynamic>[
    {
      "image": "./assets/icons/image_home2.jpg",
      "profile": "./assets/icons/image_profile2.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2 k",
      "dot": "./assets/icons/icon_threedot.png"
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "profile": "./assets/icons/image_profile2.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2 k",
      "dot": "./assets/icons/icon_threedot.png"
    },
  ];
  List<dynamic> followed = <dynamic>[
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile2.jpg",
      "name": "It Chapter Two",
      "date": "17 May 2024",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2 k",
      "dot": "./assets/icons/icon_threedot.png"
    },
  ];
  int isclick = 0;
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
        //=====================drawer=========================
        endDrawer: Drawer(
          backgroundColor: Colors.white,
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 13 / 100,
              ),
              Center(
                child: Container(
                  alignment: Alignment.center,
                  height: MediaQuery.of(context).size.width * 17 / 100,
                  width: MediaQuery.of(context).size.width * 17 / 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(60),
                      image: DecorationImage(
                          image: AssetImage(
                            AppImage.profilrgirlImage,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 3 / 100,
              ),
              Container(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      width: MediaQuery.of(context).size.width * 70 / 100,
                      decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                          gradient: LinearGradient(colors: [
                            AppColor.redcolor,
                            AppColor.pinkcolor,
                            AppColor.lpinkcolor,
                            AppColor.mbluecolor,
                            AppColor.lbluecolor,
                          ]),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppLanguage.signoutButtonText[language],
                        style: const TextStyle(
                            color: AppColor.themeColor1,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
              Container(
                // height: MediaQuery.of(context).size.height * 7 / 100,
                // width: MediaQuery.of(context).size.width * 20 / 100,
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      width: MediaQuery.of(context).size.width * 70 / 100,
                      decoration: BoxDecoration(
                        border: const GradientBoxBorder(
                          gradient: LinearGradient(colors: [
                            AppColor.redcolor,
                            AppColor.pinkcolor,
                            AppColor.lpinkcolor,
                            AppColor.mbluecolor,
                            AppColor.lbluecolor,
                          ]),
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Text(
                        textAlign: TextAlign.center,
                        AppLanguage.termsConditionText[language],
                        style: const TextStyle(
                            color: AppColor.themeColor1,
                            fontFamily: AppFont.fontFamily,
                            fontWeight: FontWeight.w500,
                            fontSize: 15),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 2 / 100,
              ),
              Container(
                alignment: Alignment.center,
                child: Container(
                  width: MediaQuery.of(context).size.width * 70 / 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                              alignment: Alignment.center,
                              height:
                                  MediaQuery.of(context).size.height * 5 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 32 / 100,
                              decoration: BoxDecoration(
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    AppColor.redcolor,
                                    AppColor.pinkcolor,
                                    AppColor.lpinkcolor,
                                    AppColor.mbluecolor,
                                    AppColor.lbluecolor,
                                  ]),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                AppImage.mailreddIcon,
                                height:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height:
                                MediaQuery.of(context).size.height * 5 / 100,
                            width: MediaQuery.of(context).size.width * 32 / 100,
                            decoration: BoxDecoration(
                              border: const GradientBoxBorder(
                                gradient: LinearGradient(colors: [
                                  AppColor.redcolor,
                                  AppColor.pinkcolor,
                                  AppColor.lpinkcolor,
                                  AppColor.mbluecolor,
                                  AppColor.lbluecolor,
                                ]),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              AppImage.instagramredIcon,
                              height:
                                  MediaQuery.of(context).size.width * 4 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 4 / 100,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImage.backgrounfdImage),
                    fit: BoxFit.fill)),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 4 / 100,
                ),

                //=======================Main header====================
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
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 15 / 100,
                        width: MediaQuery.of(context).size.width * 42 / 100,
                        child: Image.asset(
                          AppImage.headingbigrImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const Notifications()));
                            },
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.width * 5 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 5 / 100,
                              child: Image.asset(
                                AppImage.bellIcon,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 3 / 100,
                          ),
                          Builder(
                            builder: (BuildContext context) {
                              return GestureDetector(
                                onTap: () {
                                  Scaffold.of(context).openEndDrawer();
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.width *
                                      6 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      6 /
                                      100,
                                  child: Image.asset(
                                    AppImage.menueIcon,
                                    width: 23,
                                    height: 23,
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),

                //=======================scroll header====================
                Container(
                  width: MediaQuery.of(context).size.width * 95 / 100,
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
                              color: AppColor.secondryColor,
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              child: Text(
                                AppLanguage.mostrecentText[language],
                                style: TextStyle(
                                    color: isclick == 0
                                        ? AppColor.primaryColor
                                        : AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 20 / 100,
                              height: MediaQuery.of(context).size.height *
                                  0.2 /
                                  100,
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
                              color: AppColor.secondryColor,
                              alignment: Alignment.center,
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              child: Text(
                                AppLanguage.mostpopularText[language],
                                style: TextStyle(
                                    color: isclick == 1
                                        ? AppColor.primaryColor
                                        : AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 20 / 100,
                              height: MediaQuery.of(context).size.height *
                                  0.2 /
                                  100,
                              color: isclick == 1
                                  ? AppColor.primaryColor
                                  : AppColor.secondryColor,
                            )
                          ],
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isclick = 2;
                          });
                        },
                        child: Column(
                          children: [
                            Container(
                              //  color: Colors.red,
                              alignment: Alignment.center,
                              color: AppColor.secondryColor,
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              child: Text(
                                AppLanguage.followedText[language],
                                style: TextStyle(
                                    color: isclick == 2
                                        ? AppColor.primaryColor
                                        : AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 20 / 100,
                              height: MediaQuery.of(context).size.height *
                                  0.2 /
                                  100,
                              color: isclick == 2
                                  ? AppColor.primaryColor
                                  : AppColor.secondryColor,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: MediaQuery.of(context).size.height * 2 / 100,
                ),
                if (isclick == 0)
                  //=======================List 1====================
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Wrap(direction: Axis.horizontal, children: [
                        ...List.generate(
                          home.length,
                          // ignore: avoid_unnecessary_containers
                          (index) => Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        26 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        100 /
                                        100,
                                    color: AppColor.secondryColor,
                                    child: Image.asset(
                                      home[index]["image"],
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
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    7 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    95 /
                                    100,
                                // color: AppColor.secondryColor,
                                padding: EdgeInsets.all(6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Profile1()));
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
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        home[index]["profile"]),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              3 /
                                              100,
                                        ),
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
                                                home[index]["name"],
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
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  50 /
                                                  100,
                                              child: Text(home[index]["date"],
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                      color: AppColor
                                                          .greyLightColor,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500)),
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
                                                  home[index]["eye"]),
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
                                                home[index]["like"],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                maxLines: 1,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              5 /
                                              100,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            saveshareprofile(context);
                                          },
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                4 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                4 /
                                                100,
                                            child:
                                                Image.asset(home[index]["dot"]),
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

                if (isclick == 1)
                  //=======================List2 ====================
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Wrap(direction: Axis.horizontal, children: [
                        ...List.generate(
                          mostpopular.length,
                          // ignore: avoid_unnecessary_containers
                          (index) => Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        26 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        100 /
                                        100,
                                    color: AppColor.secondryColor,
                                    child: Image.asset(
                                      mostpopular[index]["image"],
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
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    7 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    95 /
                                    100,
                                //  color: AppColor.secondryColor,
                                padding: EdgeInsets.all(6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Profile1()));
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
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        mostpopular[index]
                                                            ["profile"]),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              3 /
                                              100,
                                        ),
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
                                                mostpopular[index]["name"],
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
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  50 /
                                                  100,
                                              child: Text(
                                                  mostpopular[index]["date"],
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                      color: AppColor
                                                          .greyLightColor,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500)),
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
                                                  mostpopular[index]["eye"]),
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
                                                mostpopular[index]["like"],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                maxLines: 1,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              5 /
                                              100,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          child: Image.asset(
                                              mostpopular[index]["dot"]),
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
                if (isclick == 2)
                  //=======================List 1====================
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Wrap(direction: Axis.horizontal, children: [
                        ...List.generate(
                          followed.length,
                          // ignore: avoid_unnecessary_containers
                          (index) => Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        26 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        100 /
                                        100,
                                    color: AppColor.secondryColor,
                                    child: Image.asset(
                                      followed[index]["image"],
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
                              // SizedBox(
                              //   height: MediaQuery.of(context).size.height *
                              //       1 /
                              //       100,
                              // ),
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    7 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    95 /
                                    100,
                                padding: EdgeInsets.all(6),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                        const Profile1()));
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
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(50),
                                                image: DecorationImage(
                                                    image: AssetImage(
                                                        followed[index]
                                                            ["profile"]),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              3 /
                                              100,
                                        ),
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
                                                followed[index]["name"],
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
                                            ),
                                            Container(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  50 /
                                                  100,
                                              child: Text(
                                                  followed[index]["date"],
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                      color: AppColor
                                                          .greyLightColor,
                                                      fontSize: 10,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontWeight:
                                                          FontWeight.w500)),
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
                                                  followed[index]["eye"]),
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
                                                followed[index]["like"],
                                                style: TextStyle(
                                                    color:
                                                        AppColor.primaryColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontWeight:
                                                        FontWeight.w500),
                                                maxLines: 1,
                                              ),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              5 /
                                              100,
                                        ),
                                        Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              4 /
                                              100,
                                          child: Image.asset(
                                              followed[index]["dot"]),
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
              ],
            ),
          ),
        ),
        bottomNavigationBar: const AppFooter(
            selectedMenu: BottomMenus.home, notificationCount: 0),
      ),
    );
  }

  //============backhandeler=============

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
                                        // Navigator.push(
                                        //     context,
                                        //     MaterialPageRoute(
                                        //         builder: (context) =>
                                        //             const Addonplaylist()));
                                        setState(() {
                                          // click = false;
                                        });
                                      },
                                      child: Column(
                                        children: [
                                          // if (click == false)
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
                                                  child: Image.asset(AppImage
                                                      .bookmarkwhiteIcon),
                                                ),
                                                SizedBox(
                                                  width: MediaQuery.of(context)
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
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        fontSize: 13))
                                              ],
                                            ),
                                          ),
                                          // if (click == true)
                                          //   Container(
                                          //     decoration: BoxDecoration(
                                          //       borderRadius:
                                          //           BorderRadius.circular(10),
                                          //       color: AppColor.themeColor1,
                                          //     ),
                                          //     height: MediaQuery.of(context)
                                          //             .size
                                          //             .height *
                                          //         6 /
                                          //         100,
                                          //     width: MediaQuery.of(context)
                                          //             .size
                                          //             .width *
                                          //         75 /
                                          //         100,
                                          //     child: Row(
                                          //       mainAxisAlignment:
                                          //           MainAxisAlignment.center,
                                          //       children: [
                                          //         Container(
                                          //           height:
                                          //               MediaQuery.of(context)
                                          //                       .size
                                          //                       .width *
                                          //                   4 /
                                          //                   100,
                                          //           width:
                                          //               MediaQuery.of(context)
                                          //                       .size
                                          //                       .width *
                                          //                   4 /
                                          //                   100,
                                          //           child: Image.asset(AppImage
                                          //               .bookmarkwhiteIcon),
                                          //         ),
                                          //         SizedBox(
                                          //           width:
                                          //               MediaQuery.of(context)
                                          //                       .size
                                          //                       .width *
                                          //                   2 /
                                          //                   100,
                                          //         ),
                                          //         Text(
                                          //             AppLanguage
                                          //                     .watchlaterText[
                                          //                 language],
                                          //             style: const TextStyle(
                                          //                 color: AppColor
                                          //                     .secondryColor,
                                          //                 fontFamily: AppFont
                                          //                     .fontFamily,
                                          //                 fontWeight:
                                          //                     FontWeight.w600,
                                          //                 fontSize: 13))
                                          //       ],
                                          //     ),
                                          //   ),
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
                                      // sharebottomsheet(context);
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
                    right: MediaQuery.of(context).size.height * 3 / 100,
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
