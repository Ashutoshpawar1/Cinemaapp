import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/profile1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Channels extends StatefulWidget {
  static String routeName = './Channels';
  const Channels({super.key});

  @override
  State<Channels> createState() => _ChannelsState();
}

class _ChannelsState extends State<Channels> {
  List<dynamic> channelslist = <dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
    {
      "image": "./assets/icons/image_profile10.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
    {
      "image": "./assets/icons/image_profile10.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
    {
      "image": "./assets/icons/image_home2.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
      "name": "Sophia William",
      "text": "1.1 k",
    },
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
        body: SafeArea(
            // ignore: sized_box_for_whitespace
            child: Container(
                width: MediaQuery.of(context).size.width * 100 / 100,
                height: MediaQuery.of(context).size.height * 100 / 100,
                child: Column(children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 4 / 100,
                  ),
                  //============================header================================
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Row(
                      //header manage
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
                          AppLanguage.channelsText[language],
                          style: AppConstant.appBarTitleStyle,
                        ),
                        Container()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 4 / 100,
                  ),
                  //============================header END================================
                  //========================list============================

                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Wrap(
                        children: [
                          ...List.generate(
                            channelslist.length,
                            (index) => GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const Profile1()));
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height *
                                    25 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    45 /
                                    100,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.width *
                                              30 /
                                              100,
                                      width: MediaQuery.of(context).size.width *
                                          30 /
                                          100,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(60),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                channelslist[index]["image"],
                                              ),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              1 /
                                              100,
                                    ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          30 /
                                          100,
                                      child: Text(
                                        channelslist[index]["name"],
                                        maxLines: 1,
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
                                        channelslist[index]["text"] +
                                            AppLanguage.followersText[language],
                                        textAlign: TextAlign.center,
                                        maxLines: 2,
                                        style: const TextStyle(
                                            color: AppColor.primaryColor,
                                            fontFamily: AppFont.fontFamily,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ]))));
  }
}
