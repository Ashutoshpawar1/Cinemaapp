import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class History extends StatefulWidget {
  const History({super.key});
  static String routeName = './History';
  @override
  State<History> createState() => _HistoryState();
}

String onTap = "All";

class _HistoryState extends State<History> {
  List<dynamic> historyscroll = <dynamic>[
    {
      "id": "All",
    },
    {
      "id": "Today",
    },
    {
      "id": "Yesterday",
    },
    {
      "id": "Last Week",
    },
    {
      "id": "History",
    }
  ];
  List<dynamic> history = <dynamic>[
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    }
  ];
  List<dynamic>todaylist=<dynamic>[
     {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "text": "IT Chapter two",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "eye": "./assets/icons/icon_eyeshow.png",
      "like": "1.2k"
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
                    AppLanguage.historyText[language],
                    style: AppConstant.appBarTitleStyle,
                  ),
                  Container()
                ],
              ),
            ),
            //============================header END================================
            SizedBox(
              height: MediaQuery.of(context).size.height * 5 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 95 / 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(children: [
                  ...List.generate(
                    historyscroll.length,
                    (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          onTap = historyscroll[index]["id"];
                        });
                      },
                      child: Container(
                        color: AppColor.secondryColor,
                        width: MediaQuery.of(context).size.width * 21 / 100,
                        alignment: Alignment.center,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              historyscroll[index]["id"],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: (onTap == historyscroll[index]["id"])
                                      ? AppColor.primaryColor
                                      : AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 12 / 100,
                              height: MediaQuery.of(context).size.height *
                                  0.2 /
                                  100,
                              color: (onTap == historyscroll[index]["id"])
                                  ? AppColor.primaryColor
                                  : AppColor.secondryColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 2 / 100,
            ),

            //=============================1st List=======================
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Wrap(direction: Axis.vertical, children: [
                  ...List.generate(
                    history.length,
                    (index) => Container(
                      height: MediaQuery.of(context).size.height * 15 / 100,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            
                              width:
                                  MediaQuery.of(context).size.width * 40 / 100,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                              builder: (context) =>
                                                  const Detail()));
                                    },
                                    child: Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              23 /
                                              100,
                                      width: MediaQuery.of(context).size.width *
                                          40 /
                                          100,
                                      child: Image.asset(
                                        history[index]["image"],
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Container(
                                      width: MediaQuery.of(context).size.width *
                                          40 /
                                          100,
                                      child: Row(
                                        children: [
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                20 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5 /
                                                100,
                                            color: AppColor.themeColor,
                                          ),
                                          Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                20 /
                                                100,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.5 /
                                                100,
                                            color: AppColor.primaryColor,
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 3 / 100,
                          ),
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      2 /
                                      100,
                                ),
                                Text(
                                  history[index]["text"],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.5 /
                                      100,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              4 /
                                              100,
                                      width: MediaQuery.of(context).size.width *
                                          4 /
                                          100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                history[index]["profile"],
                                              ),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100,
                                    ),
                                    Text(
                                      history[index]["name"],
                                      style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height *
                                      0.5 /
                                      100,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              4 /
                                              100,
                                      width: MediaQuery.of(context).size.width *
                                          4 /
                                          100,
                                      child: Image.asset(
                                        history[index]["eye"],
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          1 /
                                          100,
                                    ),
                                    Text(
                                      history[index]["like"],
                                      style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 11,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                )
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
      )),
    );
  }
}
