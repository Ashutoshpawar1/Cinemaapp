import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Categories extends StatefulWidget {
  static String routeName = './Categories';
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<dynamic> categories = <dynamic>[
    {"name": "Horror"},
    {"name": "Comedy"},
    {"name": "Action"},
    {"name": "Fiction"},
    {"name": "Horror"},
    {"name": "Comedy"},
    {"name": "Action"},
    {"name": "Fiction"},
     {"name": "Horror"},
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
                child: Column(children: [
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
                          AppLanguage.categoriesText[language],
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
                  Expanded(
                    flex: 1,
                    child: SingleChildScrollView(
                      child: Wrap(
                        children: [
                          ...List.generate(
                            categories.length,
                            (index) => Container(
                               height: MediaQuery.of(context).size.height *
                                        10 /
                                        100,
                              width: MediaQuery.of(context).size.width * 90 / 100,
                              child: Column(
                                children: [
                                  GestureDetector(
                                    // onTap: () {
                                    //   Navigator.push(context, MaterialPageRoute(builder: (context)=>const Movies() ));
                                    // },
                                    child: Container(
                                      height: MediaQuery.of(context).size.height *
                                          7 /
                                          100,
                                      width: MediaQuery.of(context).size.width *
                                          90 /
                                          100,
                                      alignment: Alignment.center,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(60),
                                          border: const GradientBoxBorder(
                                              gradient: LinearGradient(colors: [
                                            AppColor.redcolor,
                                            AppColor.pinkcolor,
                                            AppColor.lpinkcolor,
                                            AppColor.mbluecolor,
                                            AppColor.lbluecolor,
                                          ]))),
                                      child: Text(
                                        categories[index]["name"],
                                        style: const TextStyle(
                                            color: AppColor.primaryColor,
                                            fontFamily: AppFont.fontFamily,
                                            fontSize: 19,
                                            fontWeight: FontWeight.w600),
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
                ]))));
  }
}
