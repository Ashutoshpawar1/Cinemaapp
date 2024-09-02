import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Addonplaylist extends StatefulWidget {
  static String routeName = './Addonplaylist';
  const Addonplaylist({super.key});

  @override
  State<Addonplaylist> createState() => _AddonplaylistState();
}

class _AddonplaylistState extends State<Addonplaylist> {
  List<dynamic> playlist = <dynamic>[
    {"name": "Playlist 1", "image": './assets/icons/icon_redclick.png'},
    {"name": "Playlist 1", "image": './assets/icons/icon_redclick.png'},
    {"name": "Playlist 1", "image": './assets/icons/icon_redclick.png'},
    {"name": "Playlist 1", "image": './assets/icons/icon_redclick.png'},
    {"name": "Playlist 1", "image": './assets/icons/icon_redclick.png'},
  ];
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
                                width: MediaQuery.of(context).size.width *
                                    10 /
                                    100,
                                child: Container(
                                  height: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  child: Image.asset(AppImage.backIcon),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.center,
                              width:
                                  MediaQuery.of(context).size.width * 70 / 100,
                              child: Text(
                                AppLanguage.playlistText[language],
                                style: AppConstant.appBarTitleStyle,
                              ),
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 10 / 100,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 6 / 100,
                      ),
                      //============================================================
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Row(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 3 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 3 / 100,
                              child: Image.asset(AppImage.youtubeIcon),
                            ),
                            Text(
                              AppLanguage.createnewplaylistText[language],
                              style: const TextStyle(
                                  color: AppColor.themeColor1,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 6 / 100,
                      ),

                      // =================Main List==========================
                      Expanded(
                        flex: 1,
                        child: Wrap(
                          children: [
                            ...List.generate(
                              playlist.length,
                              (index) => Column(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                90 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                6 /
                                                100,
                                        padding: EdgeInsets.all(10),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Text(
                                                playlist[index]['name'],
                                                // "hellow",
                                                style: const TextStyle(
                                                    color:
                                                        AppColor.greyLightColor,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.w600),
                                              ),
                                              Container(
                                                width: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    4 /
                                                    100,
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .width *
                                                    4 /
                                                    100,
                                                child: Image.asset(
                                                  playlist[index]['image'],
                                                  // "./assets/icons/icon_redclick.png"
                                                ),
                                              )
                                            ])),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        90 /
                                        100,
                                    height: MediaQuery.of(context).size.height *
                                        0.2 /
                                        100,
                                    color: AppColor.greyLightColor,
                                  ),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        1 /
                                        100,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ])))));
  }
}
