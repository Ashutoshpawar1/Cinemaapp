import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class Followers extends StatefulWidget {
  static String routeName = './Followers';
  const Followers({super.key});

  @override
  State<Followers> createState() => _FollowersState();
}

class _FollowersState extends State<Followers> {
  List<dynamic> followers = <dynamic>[
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
    },
    {
      "image": "./assets/icons/image_profile3.jpg",
      "name": " William",
    },
    {
      "image": "./assets/icons/image_profile4.jpg",
      "name": "Sophia William",
    },
    {
      "image": "./assets/icons/image_profile5.jpg",
      "name": "Sophia ",
    },
    {
      "image": "./assets/icons/image_profilep.jpg",
      "name": " William",
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
    },
    {
      "image": "./assets/icons/image_profile8.jpg",
      "name": "Sophia ",
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": " William",
    },
    {
      "image": "./assets/icons/image_profile3.jpg",
      "name": "Sophia William",
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
    },
    {
      "image": "./assets/icons/image_profile3.jpg",
      "name": "Sophia William",
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
    },
  ];

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
                          AppLanguage.followersText[language],
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
                  height: MediaQuery.of(context).size.height * 3 / 100,
                ),
                Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        ...List.generate(
                          followers.length,
                          (index) => Container(
                            height:
                                MediaQuery.of(context).size.height * 8 / 100,
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          9 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.width *
                                              9 /
                                              100,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          image: DecorationImage(
                                              image: AssetImage(
                                                  followers[index]['image']),
                                              fit: BoxFit.cover)),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          4 /
                                          100,
                                    ),
                                    Text(
                                      followers[index]['name'],
                                      // "Sophia William",
                                      style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    )
                                  ],
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      25 /
                                      100,
                                  height: MediaQuery.of(context).size.height *
                                      4 /
                                      100,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    border: const GradientBoxBorder(
                                      gradient: LinearGradient(colors: [
                                        Color(0xff7F0B2B),
                                        Color(0xff7E3658),
                                        Color(0xff7C5579),
                                        Color(0xff7A89B0),
                                        Color(0xff78B9E1),
                                      ]),
                                    ),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                1 /
                                                100,
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                3 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                3 /
                                                100,
                                        child: Image.asset(
                                            AppImage.profileaddIcon),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
