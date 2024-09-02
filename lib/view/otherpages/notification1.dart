import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Notification1 extends StatefulWidget {
  static String routeName = './Notification1';
  const Notification1({super.key});

  @override
  State<Notification1> createState() => _Notification1State();
}

class _Notification1State extends State<Notification1> {
  bool click = true;
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
                        AppLanguage.notificationText[language],
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
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 85 / 100,
                        height: MediaQuery.of(context).size.height * 21 / 100,
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          7 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              7 /
                                              100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: const DecorationImage(
                                              image: AssetImage(
                                                  AppImage.profilrgirlImage),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          2 /
                                          100,
                                    ),
                                    Text(
                                      AppLanguage.sophiaText[language],
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
                                  "20 " + AppLanguage.minagoText[language],
                                  maxLines: 1,
                                  style: const TextStyle(
                                      color: AppColor.greyLightColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
                              child: const Text(
                                "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
                                maxLines: 3,
                                style: TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 85 / 100,
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
                                            text: "32 ",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: AppColor.redcolor,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w500),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: AppLanguage
                                                    .likeText[language],
                                                style: const TextStyle(
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
                                            text: "14 ",
                                            style: const TextStyle(
                                                fontSize: 12,
                                                color: AppColor.redcolor,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w500),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: AppLanguage
                                                    .repliesText[language],
                                                style: const TextStyle(
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                10 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                10 /
                                                100,
                                        child:
                                            Image.asset(AppImage.thumbboxIcon),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                10 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                10 /
                                                100,
                                        child: Image.asset(
                                            AppImage.replieshideIcon),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 23 / 100,
                        width: MediaQuery.of(context).size.width * 85 / 100,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            color: AppColor.whitelightColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Container(
                                height: MediaQuery.of(context).size.height *
                                    20 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    80 /
                                    100,
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
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
                                                  image: const DecorationImage(
                                                      image: AssetImage(AppImage
                                                          .profilrgirlImage),
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
                                              AppLanguage.sophiaText[language],
                                              maxLines: 1,
                                              style: const TextStyle(
                                                  color: AppColor.primaryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "20 " +
                                              AppLanguage.minagoText[language],
                                          maxLines: 1,
                                          style: const TextStyle(
                                              color: AppColor.greyLightColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600),
                                        )
                                      ],
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
                                      child: const Text(
                                        "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
                                        maxLines: 3,
                                        style: TextStyle(
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
                                                    text: "32 ",
                                                    style: const TextStyle(
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
                                                        style: const TextStyle(
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
                                                    text: "14 ",
                                                    style: const TextStyle(
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
                                                        style: const TextStyle(
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
                                                    AppImage.thumbboxIcon),
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
                                                    AppImage.replieshideIcon),
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                )),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            click = false;
                          });
                          //
                        },
                        child: Container(
                          width: MediaQuery.of(context).size.width * 85 / 100,
                          child: Text(
                            AppLanguage.morereplieText[language],
                            style: const TextStyle(
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.themeColor1,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 13,
                                color: AppColor.themeColor1,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      if (click == false)
                        Container(
                          height: MediaQuery.of(context).size.height * 23 / 100,
                          width: MediaQuery.of(context).size.width * 85 / 100,
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: AppColor.whitelightColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                  height: MediaQuery.of(context).size.height *
                                      20 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      80 /
                                      100,
                                  child: Column(
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
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
                                                    image: const DecorationImage(
                                                        image: AssetImage(AppImage
                                                            .profilrgirlImage),
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
                                                AppLanguage
                                                    .sophiaText[language],
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
                                            "20 " +
                                                AppLanguage
                                                    .minagoText[language],
                                            maxLines: 1,
                                            style: const TextStyle(
                                                color: AppColor.greyLightColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600),
                                          )
                                        ],
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
                                        child: const Text(
                                          "Lorem ipsum dolor sit amet consectetur. Dui consectetur tellus elementum nibh tortor scelerisque.",
                                          maxLines: 3,
                                          style: TextStyle(
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
                                                      text: "32 ",
                                                      style: const TextStyle(
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
                                                          style: const TextStyle(
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
                                                      text: "14 ",
                                                      style: const TextStyle(
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
                                                          style: const TextStyle(
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
                                                      AppImage.thumbboxIcon),
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
                                                      AppImage.replieshideIcon),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )),
                            ],
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              // =======================this is bottom comment container===========================
              Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 8 / 100,
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                    color: AppColor.greyLightColor,
                    blurRadius: 5,
                    spreadRadius: 2,
                  ),
                  BoxShadow(
                    color: AppColor.secondryColor,
                    blurRadius: 1,
                    spreadRadius: 1,
                  ),
                ]),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 7 / 100,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 8 / 100,
                            height: MediaQuery.of(context).size.width * 8 / 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                image: const DecorationImage(
                                    image: AssetImage(AppImage.profileImage),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 60 / 100,
                            child: TextFormField(
                              decoration: InputDecoration(
                                  focusedBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  hintText:
                                      AppLanguage.addcommenthintText[language],
                                  hintStyle: const TextStyle(
                                      color: AppColor.greyLightColor,
                                      fontSize: 13,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w600)),
                            ),
                          ),
                          Container(
                            height: MediaQuery.of(context).size.width * 8 / 100,
                            width: MediaQuery.of(context).size.width * 11 / 100,
                            child: Image.asset(AppImage.sendcommentIcon),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ]),
          ))),
    );
  }
}
