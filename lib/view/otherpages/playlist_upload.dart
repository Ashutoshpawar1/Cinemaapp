import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../authentication/profile.dart';

class PlaylistUpload extends StatefulWidget {
  const PlaylistUpload({super.key});
  static String routeName = './PlaylistUpload';
  @override
  State<PlaylistUpload> createState() => _PlaylistUploadState();
}

class _PlaylistUploadState extends State<PlaylistUpload> {
  String selectPlaylistType = "NA";
  String selectPlaylist = "NA";
  int status = 0;
  List<dynamic> playlisttype = <dynamic>[
    {"name": "Movies", "image": './assets/icons/icon_redclick.png'},
    {"name": "Series", "image": './assets/icons/icon_redclick.png'},
  ];

  List<dynamic> playlisttitile = <dynamic>[
    {"name": "Titile 1", "image": './assets/icons/icon_redclick.png'},
    {"name": "Titile 2", "image": './assets/icons/icon_redclick.png'},
    {"name": "Titile 3", "image": './assets/icons/icon_redclick.png'},
    {"name": "Titile 4", "image": './assets/icons/icon_redclick.png'},
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
                                AppLanguage.playlistnameText[language],
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
                        height: MediaQuery.of(context).size.height * 4 / 100,
                      ),
                      //============================header END================================
                      Expanded(
                          flex: 1,
                          child: SingleChildScrollView(
                              child: Column(children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Text(
                                  AppLanguage.playlistnameText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13)),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 100,
                            ),
                            GestureDetector(
                              onTap: () {
                                playlistitembottomsheet(context);
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height *
                                    8 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColor.secondryColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColor.greyLightColor),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        (selectPlaylistType == "NA")
                                            ? "Select Playlist Type"
                                            : selectPlaylistType,
                                        style: TextStyle(
                                            color: AppColor.greyLightColor)),
                                    GestureDetector(
                                      onTap: () {
                                        playlistitembottomsheet(context);
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                7 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                6 /
                                                100,
                                        child:
                                            Image.asset(AppImage.downarrowIcon),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Text(
                                  AppLanguage.selcetplaylistnameText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13)),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 100,
                            ),
                            GestureDetector(
                              onTap: () {
                                selectplaylistprofile(context);
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height *
                                    8 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: AppColor.secondryColor,
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColor.greyLightColor),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                        (selectPlaylist == "NA")
                                            ? "Select Playlist"
                                            : selectPlaylist,
                                        style: TextStyle(
                                            color: AppColor.greyLightColor)),
                                    GestureDetector(
                                      onTap: () {
                                        selectplaylistprofile(context);
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                7 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                6 /
                                                100,
                                        child:
                                            Image.asset(AppImage.downarrowIcon),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              child: Text(AppLanguage.walpaperText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 13)),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 2 / 100,
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 90 / 100,
                              height:
                                  MediaQuery.of(context).size.height * 7 / 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColor.greyLightColor)),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    height: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    child: Image.asset(AppImage.choosefileIcon),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        2 /
                                        100,
                                  ),
                                  Text(AppLanguage.choosefileText[language],
                                      style: const TextStyle(
                                          color: AppColor.greyLightColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontWeight: FontWeight.w600,
                                          fontSize: 13))
                                ],
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 30 / 100,
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Profile()));
                              },
                              child: Container(
                                height: MediaQuery.of(context).size.height *
                                    7 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: const GradientBoxBorder(
                                    gradient: LinearGradient(colors: [
                                      AppColor.redcolor,
                                      AppColor.pinkcolor,
                                      AppColor.lpinkcolor,
                                      AppColor.mbluecolor,
                                      AppColor.lbluecolor,
                                    ]),
                                  ),
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        AppLanguage.uploadText[language],
                                        style: const TextStyle(
                                            color: AppColor.themeColor1,
                                            fontFamily: AppFont.fontFamily,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 16),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.width *
                                                6 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                6 /
                                                100,
                                        child: Image.asset(
                                            AppImage.uploadannouncementIcon),
                                      ),
                                    ]),
                              ),
                            ),
                            SizedBox(
                              height:
                                  MediaQuery.of(context).size.height * 4 / 100,
                            ),
                          ])))
                    ])))));
  }

  void _selectPlaylistType(select, status) {
    if (status == 1)
      setState(() {
        selectPlaylistType = select;
      });
    if (status == 2)
      setState(() {
        selectPlaylist = select;
      });
  }

// =============this popup for share small list=============
  playlistitembottomsheet(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.5),
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return Container(
                height: MediaQuery.of(context).size.height * 30 / 100,
                width: MediaQuery.of(context).size.width * 100 / 100,
                decoration: const BoxDecoration(
                    color: AppColor.secondryColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 1 / 100,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 20 / 100,
                        height: MediaQuery.of(context).size.height * 0.2 / 100,
                        color: AppColor.greyLightColor,
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    Container(
                      alignment: Alignment.topLeft,
                      width: MediaQuery.of(context).size.width * 85 / 100,
                      //  height: MediaQuery.of(context).size.height * 0.5 / 100,
                      child: Text(AppLanguage.playlisttypeText[language],
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600,
                              fontSize: 14)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 3 / 100,
                    ),
                    // =================Main List==========================
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        children: [
                          ...List.generate(
                            playlisttype.length,
                            (index) => GestureDetector(
                              onTap: () {
                                _selectPlaylistType(
                                    playlisttype[index]["name"], status = 1);
                                Navigator.pop(context);
                              },
                              child: Container(
                                color: AppColor.secondryColor,
                                width: MediaQuery.of(context).size.width *
                                    85 /
                                    100,
                                height: MediaQuery.of(context).size.height *
                                    6 /
                                    100,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      child: Text(playlisttype[index]["name"],
                                          style: const TextStyle(
                                              color: AppColor.greyLightColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontWeight: FontWeight.w600,
                                              fontSize: 12)),
                                    ),
                                    if (selectPlaylistType ==
                                        playlisttype[index]["name"])
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                4 /
                                                100,
                                        child: Image.asset(
                                          playlisttype[index]["image"],
                                        ),
                                      )
                                  ],
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ));
          }));
        });
  }

// =============this popup for save share=============

  createnewplaylist(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        useRootNavigator: false,
        isDismissible: false,
        enableDrag: false,
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.5),
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return GestureDetector(
              onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
              child: Stack(
                children: [
                  Container(
                    color: AppColor.primaryColor.withOpacity(0.5),
                    width: MediaQuery.of(context).size.width * 100 / 100,
                    height: MediaQuery.of(context).size.height * 100 / 100,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height:
                                MediaQuery.of(context).size.height * 30 / 100,
                          ),
                          Container(
                            height:
                                MediaQuery.of(context).size.height * 30 / 100,
                            width: MediaQuery.of(context).size.width * 90 / 100,
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
                                      height:
                                          MediaQuery.of(context).size.height *
                                              4 /
                                              100,
                                    ),

                                    //=========Upload text=================
                                    Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                85 /
                                                100,
                                        child: Text(
                                            AppLanguage.createnewplaylistText[
                                                language],
                                            style: const TextStyle(
                                                color: AppColor.greyLightColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 13))),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              4 /
                                              100,
                                    ),
                                    Container(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              8 /
                                              100,
                                      width: MediaQuery.of(context).size.width *
                                          75 /
                                          100,
                                      child: TextFormField(
                                        style: const TextStyle(
                                          color: AppColor.primaryColor,
                                        ),
                                        textAlignVertical:
                                            TextAlignVertical.center,
                                        keyboardType: TextInputType.name,
                                        maxLength:
                                            AppConstant.passwordMaxLength,
                                        decoration: InputDecoration(
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: AppColor.greyLightColor),
                                          ),
                                          enabledBorder:
                                              const OutlineInputBorder(
                                            borderSide: BorderSide(
                                                color: AppColor.greyLightColor),
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(10)),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            borderSide: BorderSide(
                                                color: AppColor.greyLightColor),
                                          ),
                                          counterText: '',
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height:
                                          MediaQuery.of(context).size.height *
                                              4 /
                                              100,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Container(
                                        alignment: Alignment.center,
                                        height:
                                            MediaQuery.of(context).size.height *
                                                5 /
                                                100,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                25 /
                                                100,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(30),
                                          gradient: LinearGradient(
                                            begin: Alignment.topLeft,
                                            end: Alignment.topRight,
                                            colors: <Color>[
                                              Color(0xff78B9E1),
                                              Color(0xff7A89B0),
                                              Color(0xff7C5579),
                                              Color(0xff7E3658),
                                              Color(0xff7F0B2B),
                                            ],
                                            tileMode: TileMode.mirror,
                                          ),
                                        ),
                                        child: Text(
                                          AppLanguage.createText[language],
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: AppColor.secondryColor,
                                              fontFamily: AppFont.fontFamily,
                                              fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                    ),

                                    //=========Videos container=================
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
                      top: MediaQuery.of(context).size.height * 27.5 / 100,
                      right: MediaQuery.of(context).size.height * 1.5 / 100,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Container(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 7 / 100,
                          child: Image.asset(AppImage.cancleIcon),
                        ),
                      ))
                ],
              ),
            );
          }));
        });
  }

  // =============this popup for playlist titile list=============

  selectplaylistprofile(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        useRootNavigator: false,
        isDismissible: false,
        enableDrag: false,
        context: context,
        backgroundColor: AppColor.secondryColor,
        // backgroundColor: AppColor.primaryColor.withOpacity(0.5),
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return Container(
              color: AppColor.secondryColor,
              width: MediaQuery.of(context).size.width * 100 / 100,
              height: MediaQuery.of(context).size.height * 100 / 100,
              child: Center(
                child: Column(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 10 / 100,
                    ),

                    //============================header===================================
                    Container(
                      // color: Colors.red,
                      width: MediaQuery.of(context).size.width * 95 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              width:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                child: Image.asset(AppImage.backIcon),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 70 / 100,
                            child: Text(
                              AppLanguage.playlistnameText[language],
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
                    GestureDetector(
                      onTap: () {
                        createnewplaylist(context);
                      },
                      child: Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Row(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 5 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 5 / 100,
                              child: Image.asset(AppImage.youtubeIcon),
                            ),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 2 / 100,
                            ),
                            Text(
                              AppLanguage.createnewplaylistText[language],
                              style: const TextStyle(
                                  color: AppColor.themeColor1,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w600),
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 3 / 100,
                    ),

                    // =================Main List==========================
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        children: [
                          ...List.generate(
                            playlisttitile.length,
                            (index) => Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _selectPlaylistType(
                                        playlisttitile[index]["name"], 2);
                                    Navigator.pop(context);
                                  },
                                  child: Container(
                                      color: AppColor.secondryColor,
                                      width: MediaQuery.of(context).size.width *
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
                                              playlisttitile[index]["name"],
                                              style: const TextStyle(
                                                  color:
                                                      AppColor.greyLightColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            if (selectPlaylist ==
                                                playlisttitile[index]["name"])
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
                                                  playlisttitile[index]
                                                      ["image"],
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
                  ],
                ),
              ),
            );
          }));
        });
  }
}
