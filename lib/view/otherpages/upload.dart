import 'package:cinemaapp/utilities/app_button.dart';
import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/announcement_upload.dart';
import 'package:cinemaapp/view/otherpages/video_upload.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Upload extends StatefulWidget {
  static String routeName = './Upload';
  const Upload({super.key});

  @override
  State<Upload> createState() => _UploadState();
}

class _UploadState extends State<Upload> {
  List<dynamic> subscription = <dynamic>[
    {
      "price": "4.99",
      "calender": "Monthly",
      "text": "For announcements",
      "status": "true"
    },
    {
      "price": "6.99",
      "calender": "Monthly",
      "text": "For videos & announcements",
      "status": "false"
    },
    {
      "price": "50",
      "calender": "yearly",
      "text": "For announcements",
      "status": "false"
    },
    {
      "price": "74",
      "calender": "yearly",
      "text": "For videos & announcements",
      "status": "false"
    }
  ];
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
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.subscribeImage), fit: BoxFit.cover)),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height * 4 / 100,
            ),
            //============================header================================
            Container(
              width: MediaQuery.of(context).size.width * 95 / 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.width * 5 / 100,
                      width: MediaQuery.of(context).size.width * 5 / 100,
                      child: Image.asset(AppImage.leftarrowIcon),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: MediaQuery.of(context).size.width * 80 / 100,
                    child: Text(
                      AppLanguage.buysubsciptionText[language],
                      style: const TextStyle(
                          color: AppColor.secondryColor,
                          fontFamily: AppFont.fontFamily,
                          fontSize: 16,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 13 / 100,
            ),

            //=======================centre part==============================
            Container(
              width: MediaQuery.of(context).size.width * 100 / 100,
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppLanguage.chooseplanText[language],
                    style: const TextStyle(
                        color: AppColor.secondryColor,
                        fontFamily: AppFont.fontFamily,
                        fontSize: 25,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 6 / 100,
            ),
            //=======================centre part==============================
            //=======================List Start===============================
            SingleChildScrollView(
              child: Wrap(
                children: [
                  ...List.generate(
                    subscription.length,
                    (index) => Column(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 45 / 100,
                          height: MediaQuery.of(context).size.height * 22 / 100,
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                      margin:
                                          EdgeInsets.only(top: 10, left: 10),
                                      height:
                                          MediaQuery.of(context).size.height *
                                              18.5 /
                                              100,
                                      width: MediaQuery.of(context).size.width *
                                          38 /
                                          100,
                                      decoration: BoxDecoration(
                                          color: AppColor.blueColor,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: AppColor.secondryColor)),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SizedBox(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                2 /
                                                100,
                                          ),
                                          Container(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  3 /
                                                  100,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width *
                                                  32 /
                                                  100,
                                              alignment: Alignment.topLeft,
                                              decoration: const BoxDecoration(
                                                  image: DecorationImage(
                                                alignment: Alignment.topLeft,
                                                image: AssetImage(AppImage
                                                    .rectanglebannerIcon),
                                              )),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1 /
                                                            100,
                                                  ),
                                                  Container(
                                                    alignment: Alignment.center,
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            3 /
                                                            100,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            15 /
                                                            100,
                                                    child: Text(
                                                      subscription[index]
                                                          ["calender"],
                                                      maxLines: 1,
                                                      style: const TextStyle(
                                                          color: AppColor
                                                              .secondryColor,
                                                          fontFamily: AppFont
                                                              .fontFamily,
                                                          fontSize: 12,
                                                          fontWeight:
                                                              FontWeight.w600),
                                                    ),
                                                  ),
                                                ],
                                              )),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                32 /
                                                100,
                                            child: Row(
                                              children: [
                                                Text(
                                                  subscription[index]["price"],
                                                  maxLines: 1,
                                                  style: const TextStyle(
                                                      color: AppColor
                                                          .secondryColor,
                                                      fontFamily:
                                                          AppFont.fontFamily,
                                                      fontSize: 32,
                                                      fontWeight:
                                                          FontWeight.w700),
                                                ),
                                                Container(
                                                  width: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      6 /
                                                      100,
                                                  height: MediaQuery.of(context)
                                                          .size
                                                          .width *
                                                      6 /
                                                      100,
                                                  child: Image.asset(
                                                      AppImage.currencyIcon),
                                                )
                                              ],
                                            ),
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                30 /
                                                100,
                                            child: Text(
                                              subscription[index]["text"],
                                              style: const TextStyle(
                                                  color: AppColor.secondryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                          )
                                        ],
                                      )),
                                  if (subscription[index]["status"] == "true")
                                    Positioned(
                                        top:
                                            MediaQuery.of(context).size.height *
                                                -1 /
                                                100,
                                        left:
                                            MediaQuery.of(context).size.width *
                                                0 /
                                                100,
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Container(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                6 /
                                                100,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                6 /
                                                100,
                                            child: Image.asset(
                                                AppImage.rightMarkIcon),
                                          ),
                                        ))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 5 / 100,
            ),
            AppButton(
                text: AppLanguage.buysubsciptionText[language],
                onPress: () {
                  saveshareprofile(context);
                })
          ],
        ),
      ),
    ));
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
                          height: MediaQuery.of(context).size.height * 25 / 100,
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
                                        2 /
                                        100,
                                  ),

                                  //=========Upload text=================
                                  Container(
                                      alignment: Alignment.center,
                                      width: MediaQuery.of(context).size.width *
                                          85 /
                                          100,
                                      child: Text(
                                          AppLanguage.uploadText[language],
                                          style: const TextStyle(
                                              color: AppColor.greyLightColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 13))),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        2 /
                                        100,
                                  ),
                                  //=========Videos container=================
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Videoupload()));
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
                                                4.5 /
                                                100,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                4.5 /
                                                100,
                                            child: Image.asset(
                                                AppImage.videossIcon),
                                          ),
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                2 /
                                                100,
                                          ),
                                          Text(AppLanguage.videosText[language],
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
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        2 /
                                        100,
                                  ),
                                  //=========announcement box=================
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Announcementupload()));
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
                                                5 /
                                                100,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                5 /
                                                100,
                                            child: Image.asset(
                                              AppImage.announcehideIcon,
                                              color: AppColor.secondryColor,
                                            ),
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
                                                  .announcementsText[language],
                                              style: const TextStyle(
                                                  color: AppColor.secondryColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontWeight: FontWeight.w600,
                                                  fontSize: 14))
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
                    top: MediaQuery.of(context).size.height * 37.5 / 100,
                    right: MediaQuery.of(context).size.width * 6 / 100,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 7 / 100,
                        child: Image.asset(AppImage.cancleIcon),
                        // color: Colors.blue,
                      ),
                    ))
              ],
            );
          }));
        });
  }
}
