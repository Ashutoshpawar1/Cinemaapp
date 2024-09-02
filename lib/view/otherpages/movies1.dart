import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/view/otherpages/detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Movies1 extends StatefulWidget {
  static String routeName = './Movies1';
  const Movies1({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _Movies1State createState() => _Movies1State();
}

class _Movies1State extends State<Movies1> {
  List<dynamic> movies1list = <dynamic>[
    {
      "image": "./assets/icons/image_home1.jpg",
      "name": "IT Chapter two",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_profile5.jpg",
      "name": "IT Chapter two",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "name": "IT Chapter two",
      "text": "Twenty-seven years after their first encounter with",
      "text1": "See More"
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
            body: SafeArea(
                child: Container(
          width: MediaQuery.of(context).size.width * 100 / 100,
          height: MediaQuery.of(context).size.height * 100 / 100,
          child: Column(
            children: [
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
                        height: MediaQuery.of(context).size.width * 6 / 100,
                        width: MediaQuery.of(context).size.width * 5 / 100,
                        child: Image.asset(AppImage.backIcon),
                      ),
                    ),
                    Text(
                      "Sophia William",
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
              //=============================Main List=======================

              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Wrap(direction: Axis.vertical, children: [
                    ...List.generate(
                      movies1list.length,
                      (index) => Container(
                        height: MediaQuery.of(context).size.height * 15 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Detail()));
                              },
                              child: Stack(
                                children: [
                                  Container(
                                    height: MediaQuery.of(context).size.width *
                                        23 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        40 /
                                        100,
                                    child: Image.asset(
                                      movies1list[index]["image"],
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  Positioned(
                                      top: MediaQuery.of(context).size.height *
                                          4 /
                                          100,
                                      right: MediaQuery.of(context).size.width *
                                          18 /
                                          100,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                5 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                5 /
                                                100,
                                        child: Image.asset(AppImage.playIcon),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 2 / 100,
                            ),
                            Container(
                              height:
                                  MediaQuery.of(context).size.width * 25 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 45 / 100,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Text(
                                    movies1list[index]["name"],
                                    maxLines: 1,
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
                                  Container(
                                      child: Text(
                                    movies1list[index]["text"],
                                    maxLines: 2,
                                    style: const TextStyle(
                                        color: AppColor.greyLightColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500),
                                  )),
                                  Text(movies1list[index]["text1"],
                                      maxLines: 1,
                                      style: const TextStyle(
                                          decoration: TextDecoration.underline,
                                          decorationColor: AppColor.themeColor1,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 10,
                                          color: AppColor.themeColor1,
                                          fontWeight: FontWeight.w500))
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
        ))));
  }
}
