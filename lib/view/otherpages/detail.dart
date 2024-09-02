import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Detail extends StatefulWidget {
  static String routeName = './Detail';
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
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
                    AppLanguage.sophiaText[language],
                    style: AppConstant.appBarTitleStyle,
                  ),
                  Container()
                ],
              ),
            ),
            //============================header END================================
            SizedBox(
              height: MediaQuery.of(context).size.height * 4/ 100,
            ),
            Column(
              children: [
                Stack(children: [
                  Container(
                    height: MediaQuery.of(context).size.width * 60 / 100,
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    child: Image.asset(
                      "./assets/icons/image_home1.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * 12 / 100,
                      right: MediaQuery.of(context).size.height * 17 / 100,
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 12 / 100,
                            height:
                                MediaQuery.of(context).size.width * 12 / 100,
                            child: Image.asset(AppImage.playIcon),
                          ),
                          Text(AppLanguage.continuewatchingText[language],
                              style: TextStyle(
                                  color: AppColor.secondryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600))
                        ],
                      ))
                ]),
                Container(
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    child: Row(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 50 / 100,
                          height: MediaQuery.of(context).size.height * 1 / 100,
                          color: AppColor.themeColor,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 50 / 100,
                          height: MediaQuery.of(context).size.height * 1 / 100,
                          color: AppColor.primaryColor,
                        ),
                      ],
                    )),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 1 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 9 / 100,
                            height: MediaQuery.of(context).size.width * 9 / 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50),
                                image: const DecorationImage(
                                    image: AssetImage(
                                        "./assets/icons/image_profile1.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 2 / 100,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "It Chapter Two",
                                style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600),
                              ),
                              Text("17 May 2024",
                                  style: TextStyle(
                                      color: AppColor.greyLightColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 12,
                                      fontWeight: FontWeight.w600))
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          saveshareprofile(context);
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 5 / 100,
                          height: MediaQuery.of(context).size.width * 5 / 100,
                          child: Image.asset(AppImage.threedotIcon),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 2 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.eyeshowIcon),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          Text("1.2" + AppLanguage.kText[language],
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.thumbshowIcon),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          const Text("900",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.commentshowIcon),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 1 / 100,
                          ),
                          const Text("674",
                              style: TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(AppLanguage.contentcreditText[language],
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontFamily: AppFont.fontFamily,
                              fontSize: 15,
                              fontWeight: FontWeight.w600)),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 1 / 100,
                      ),
                      const Text(
                          "Twenty-seven years after their first encounter with the terrifying Pennywise, the Losers Club have grown up and moved away, until a devastating phone call brings them back.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              color: AppColor.greyLightColor,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w500)),
                      GestureDetector(
                        onTap: () {
                          describeprofile(context);
                        },
                        child: Text(AppLanguage.seemoreText[language],
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.themeColor1,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 12,
                                color: AppColor.themeColor1,
                                fontWeight: FontWeight.w500)),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 2 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 20 / 100,
                        height: MediaQuery.of(context).size.height * 4.5 / 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.greyLightColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(AppLanguage.onlylikeText[language],
                                style: const TextStyle(
                                    color: AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 3 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 3 / 100,
                              child: Image.asset(AppImage.thumbshowIcon),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 35 / 100,
                        height: MediaQuery.of(context).size.height * 4.5 / 100,
                        decoration: BoxDecoration(
                          border: Border.all(color: AppColor.greyLightColor),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(AppLanguage.commentsText[language],
                                style: const TextStyle(
                                    color: AppColor.greyLightColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w500)),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 4 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 4 / 100,
                              child: Image.asset(AppImage.commentshowIcon),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    ));
  }

// =============this popup for profile description=============
  describeprofile(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
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
                    height: MediaQuery.of(context).size.height * 70 / 100,
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
                                    "Lorem ipsum dolor sit amet consectetur. Neque odio blandit mauris duis ullamcorper amet vestibulum. Blandit metus nec venenatis et ultrices scelerisque. ",
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
                                    "Lorem ipsum dolor sit amet consectetur. Neque odio blandit mauris duis ullamcorper amet vestibulum. Blandit metus nec venenatis et ultrices scelerisque. Elementum leo odio in faucibus eget odio interdum. Rhoncus volutpat vel blandit imperdiet urna integer. Mi tristique nulla tristique consequat. Faucibus amet sit cras posuere orci sed justo. Proin velit turpis blandit proin faucibus.amet vestibulum. Blandit metus nec venenatis et ultrices scelerisque. Elementum leo odio in faucibus eget odio interdum. Rhoncus volutpat vel blandit imperdiet urna integer. Mi tristique nulla tristique consequat.",
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
                                        setState(() {});
                                      },
                                      child: Column(
                                        children: [
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
                                                            .removefromsavedText[
                                                        language],
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
                                        ],
                                      )),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        2 /
                                        100,
                                  ),
                                  //=========share test=================

                                  GestureDetector(
                                    onTap: () {},
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
