import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Search extends StatefulWidget {
  static String routeName = './Search';
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  List<dynamic> searchlist = <dynamic>[
    {
      "image": "./assets/icons/image_home1.jpg",
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
    {
      "image": "./assets/icons/image_profile6.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
  ];
  List<dynamic>serieslist=<dynamic>[
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
    {
      "image": "./assets/icons/image_boys.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
  ];
  List<dynamic>channelslist=<dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
     {
      "image": "./assets/icons/image_home1.jpg",
      "profile": "./assets/icons/image_profile1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },

  ];
  int isclick = 0;

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
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 6 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                child: Image.asset(AppImage.backIcon),
                              ),
                            ),
                            Text(
                              AppLanguage.searchText[language],
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 19,
                                  fontWeight: FontWeight.w600),
                            ),
                            Container()
                          ],
                        ),
                      ),
                      //============================header END================================
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      //============================Search ================================
                      Container(
                        height: MediaQuery.of(context).size.height * 8 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.emailAddress,
                          maxLength: AppConstant.emailMaxLength,
                          style: const TextStyle(
                            height:1,
                            color: AppColor.primaryColor,
                          ),
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(30)),
                            enabledBorder: const OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColor.greyLightColor),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                            ),
                            focusedBorder: const GradientOutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30)),
                              gradient: LinearGradient(colors: [
                                AppColor.redcolor,
                                AppColor.pinkcolor,
                                AppColor.lpinkcolor,
                                AppColor.mbluecolor,
                                AppColor.lbluecolor,
                              ]),
                            ),
                            prefixIcon: IconButton(
                                onPressed: () {},
                                icon: Image.asset(
                                  AppImage.searchIcon,
                                  height: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                )),
                            hintText: AppLanguage.searchText[language],
                            hintStyle:
                                const TextStyle(color: AppColor.greyLightColor),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      //============================Search end================================
                      Container(
                        width: MediaQuery.of(context).size.width * 80 / 100,
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
                                  Text(
                                    AppLanguage.moviesText[language],
                                    style: TextStyle(
                                        color: isclick == 0
                                            ? AppColor.primaryColor
                                            : AppColor.greyLightColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 14),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        18 /
                                        100,
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
                                  Text(
                                    AppLanguage.seriesText[language],
                                    style: TextStyle(
                                        color: isclick == 1
                                            ? AppColor.primaryColor
                                            : AppColor.greyLightColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        20 /
                                        100,
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
                                  Text(
                                    AppLanguage.channelsText[language],
                                    style: TextStyle(
                                        color: isclick == 2
                                            ? AppColor.primaryColor
                                            : AppColor.greyLightColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 15),
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        20 /
                                        100,
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
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      //============================Search end================================

                      //============================List start================================
                      if(isclick==0)
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Wrap(
                            children: [
                              ...List.generate(
                                searchlist.length,
                                (index) => Container(
                                  height: MediaQuery.of(context).size.height *
                                      30 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      45 /
                                      100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  searchlist[index]["image"],
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
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  searchlist[index]["profile"],
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        child: Text(
                                          searchlist[index]["name"],
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        child: Text(
                                          searchlist[index]["text"],
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
                              )
                            ],
                          ),
                        ),
                      )
                    
                                          //============================List start================================
                      
                      ,if(isclick==1)
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Wrap(
                            children: [
                              ...List.generate(
                                serieslist.length,
                                (index) => Container(
                                  height: MediaQuery.of(context).size.height *
                                      30 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      45 /
                                      100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  serieslist[index]["image"],
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
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  serieslist[index]["profile"],
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        child: Text(
                                          serieslist[index]["name"],
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
                                        width:
                                            MediaQuery.of(context).size.width *
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
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    

                     ,if(isclick==2)
                      Expanded(
                        flex: 1,
                        child: SingleChildScrollView(
                          child: Wrap(
                            children: [
                              ...List.generate(
                                channelslist.length,
                                (index) => Container(
                                  height: MediaQuery.of(context).size.height *
                                      30 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      45 /
                                      100,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
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
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(60),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  channelslist[index]["profile"],
                                                ),
                                                fit: BoxFit.cover)),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
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
                                        width:
                                            MediaQuery.of(context).size.width *
                                                30 /
                                                100,
                                        child: Text(
                                          channelslist[index]["text"],
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
                              )
                            ],
                          ),
                        ),
                      )
                    
                    
                    
                    ],
                  )))),
    );
  }
}
