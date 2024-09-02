import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/edit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Videos extends StatefulWidget {
  const Videos({super.key});
  static String routeName = './Videos';
  @override
  State<Videos> createState() => _VideosState();
}

class _VideosState extends State<Videos> {
  List<dynamic> videoslist = <dynamic>[
    {
      "image": "./assets/icons/image_profile10.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_profile2.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_home1.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    }
  ];
  List<dynamic>serieslist=<dynamic>[
    {
      "image": "./assets/icons/image_profile6.jpg",
      "name": "Horror",
      "text": "It Chapter Two - horror Films",
    },
    {
      "image": "./assets/icons/image_avengers.jpg",
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
    return Scaffold(
      backgroundColor: AppColor.secondryColor,
      body: SafeArea(
          child: Container(
        height: MediaQuery.of(context).size.height * 100 / 100,
        width: MediaQuery.of(context).size.width * 100 / 100,
        child: Column(
          children: [
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
                    AppLanguage.videosText[language],
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
              width: MediaQuery.of(context).size.width * 80 / 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                          width: MediaQuery.of(context).size.width * 40 / 100,
                          alignment: Alignment.center,
                          color: AppColor.secondryColor,
                          child: Text(
                            AppLanguage.moviesText[language],
                            style: TextStyle(
                                color: isclick == 0
                                    ? AppColor.primaryColor
                                    : AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.3 / 100,
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          alignment: Alignment.center,
                          color: isclick == 0
                              ? AppColor.primaryColor
                              : AppColor.secondryColor,
                        ),
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
                          width: MediaQuery.of(context).size.width * 40 / 100,
                          alignment: Alignment.center,
                          color: AppColor.secondryColor,
                          child: Text(
                            AppLanguage.seriesText[language],
                            style: TextStyle(
                                color: isclick == 1
                                    ? AppColor.primaryColor
                                    : AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 15,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                          height:
                              MediaQuery.of(context).size.height * 0.3 / 100,
                          width: MediaQuery.of(context).size.width * 20 / 100,
                          alignment: Alignment.center,
                          color: isclick == 1
                              ? AppColor.primaryColor
                              : AppColor.secondryColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 5 / 100,
            ),

            //=====================main container==============
            if(isclick==0)
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    ...List.generate(
                      videoslist.length,
                      (index) => Container(
                        height: MediaQuery.of(context).size.height * 35 / 100,
                        width: MediaQuery.of(context).size.width * 45 / 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        videoslist[index]["image"],
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              child: Text(
                                videoslist[index]["name"],
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
                                  MediaQuery.of(context).size.width * 30 / 100,
                              child: Text(
                                videoslist[index]["text"],
                                textAlign: TextAlign.center,
                                maxLines: 2,
                                style: const TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Edit()));
                              },
                              child: Container(
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
                                      AppColor.redcolor,
                                      AppColor.pinkcolor,
                                      AppColor.lpinkcolor,
                                      AppColor.mbluecolor,
                                      AppColor.lbluecolor,
                                    ]),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      AppLanguage.editText[language],
                                      style: const TextStyle(
                                          color: AppColor.themeColor1,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                     SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 1 / 100,
                            ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          3 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              3 /
                                              100,
                                      child:
                                          Image.asset(AppImage.redpencilIcon),
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
              ),
            )
          
          ,if(isclick==1)
          Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Wrap(
                  children: [
                    ...List.generate(
                      serieslist.length,
                      (index) => Container(
                        height: MediaQuery.of(context).size.height * 30 / 100,
                        width: MediaQuery.of(context).size.width * 45 / 100,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              height:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  image: DecorationImage(
                                      image: AssetImage(
                                        serieslist[index]["image"],
                                      ),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 30 / 100,
                              child: Text(
                                serieslist[index]["name"],
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
                                  MediaQuery.of(context).size.width * 30 / 100,
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
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 1 / 100,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Edit()));
                              },
                              child: Container(
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
                                      AppColor.redcolor,
                                      AppColor.pinkcolor,
                                      AppColor.lpinkcolor,
                                      AppColor.mbluecolor,
                                      AppColor.lbluecolor,
                                    ]),
                                  ),
                                ),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      AppLanguage.editText[language],
                                      style: const TextStyle(
                                          color: AppColor.themeColor1,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600),
                                    ),
                                     SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 1 / 100,
                            ),
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          3 /
                                          100,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              3 /
                                              100,
                                      child:
                                          Image.asset(AppImage.redpencilIcon),
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
              ),
            )
         




          ],
        ),
      )),
    );
  }





}
