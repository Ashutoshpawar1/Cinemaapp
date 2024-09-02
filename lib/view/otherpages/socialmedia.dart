import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class SocialMedia extends StatefulWidget {
  static String routeName = './SocialMedia';
  const SocialMedia({super.key});

  @override
  State<SocialMedia> createState() => _SocialMediaState();
}

class _SocialMediaState extends State<SocialMedia> {
  TextEditingController emailTextEditingController = TextEditingController();
  String selectSocialMedia = "NA";

  List<dynamic> selectsocailmedialist = <dynamic>[
    {"name": "FaceBook", "image": './assets/icons/icon_redclick.png'},
    {"name": "Instagram", "image": './assets/icons/icon_redclick.png'},
    {"name": "Tik Tok", "image": './assets/icons/icon_redclick.png'},
    {"name": "X", "image": './assets/icons/icon_redclick.png'},
    {"name": "Discord", "image": './assets/icons/icon_redclick.png'},
    {"name": "Telegram", "image": './assets/icons/icon_redclick.png'},
    {"name": "Reddit", "image": './assets/icons/icon_redclick.png'},
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
                      AppLanguage.socialmediaText[language],
                      style: AppConstant.appBarTitleStyle,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                          width: MediaQuery.of(context).size.width * 17 / 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              AppColor.redcolor,
                              AppColor.pinkcolor,
                              AppColor.lpinkcolor,
                              AppColor.mbluecolor,
                              AppColor.lbluecolor,
                            ]),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.width * 3 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 2 / 100,
                                child: Image.asset(AppImage.basictickIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 1 / 100,
                              ),
                              Text(
                                AppLanguage.doneText[language],
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: AppColor.secondryColor,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 11),
                              )
                            ],
                          )),
                    )
                  ],
                ),
              ),
              //============================header END================================
              Expanded(
                  flex: 1,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Text(
                            AppLanguage.addmailText[language],
                            style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: TextFormField(
                            style: const TextStyle(
                              // height: 1,
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.emailAddress,
                            maxLength: AppConstant.emailMaxLength,
                            controller: emailTextEditingController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.greyLightColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              focusedBorder: const GradientOutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                gradient: LinearGradient(colors: [
                                  AppColor.redcolor,
                                  AppColor.pinkcolor,
                                  AppColor.lpinkcolor,
                                  AppColor.mbluecolor,
                                  AppColor.lbluecolor,
                                ]),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              hintText: AppLanguage.entterEmailText[language],
                              hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor),
                              counterText: '',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Text(
                            AppLanguage.socialmediaText[language],
                            style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 15),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 8 / 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColor.greyLightColor),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                  (selectSocialMedia == "NA")
                                      ? "Select Social Media"
                                      : selectSocialMedia,
                                  style: TextStyle(
                                      color: AppColor.greyLightColor)),
                              GestureDetector(
                                onTap: () {
                                  selectsocailmediabottomsheet(context);
                                },
                                child: Container(
                                  height: MediaQuery.of(context).size.height *
                                      7 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      6 /
                                      100,
                                  child: Image.asset(AppImage.downarrowIcon),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 40 / 100,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              AppLanguage.nextButtonText[language],
                              style: const TextStyle(
                                  color: AppColor.themeColor1,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16),
                            ),
                          ),
                        )
                      ],
                    ),
                  ))
            ],
          ),
        )),
      ),
    );
  }

  void _selectSocialMedia(name) {
    setState(
      () {
        selectSocialMedia = name;
      },
    );
  }

// =============this popup for share small list=============
  selectsocailmediabottomsheet(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
        context: context,
        backgroundColor: AppColor.primaryColor.withOpacity(0.5),
        builder: (BuildContext context) {
          return StatefulBuilder(builder: ((context, setState) {
            return Container(
                height: MediaQuery.of(context).size.height * 40 / 100,
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
                      child: Text(AppLanguage.selectsocailmediaText[language],
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
                      child: SingleChildScrollView(
                        child: Wrap(
                          children: [
                            ...List.generate(
                              selectsocailmedialist.length,
                              (index) => GestureDetector(
                                onTap: () {
                                  _selectSocialMedia(
                                      selectsocailmedialist[index]["name"]);

                                  Navigator.pop(context);
                                },
                                child: Container(
                                  // color: Colors.red,
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
                                        child: Text(
                                            selectsocailmedialist[index]
                                                ["name"],
                                            style: const TextStyle(
                                                color: AppColor.greyLightColor,
                                                fontFamily: AppFont.fontFamily,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 12)),
                                      ),

                                      if (selectSocialMedia ==
                                          selectsocailmedialist[index]["name"])
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
                                            selectsocailmedialist[index]
                                                ["image"],
                                          ),
                                        )
                                      // Container(
                                      //   width:
                                      //       MediaQuery.of(context).size.width *
                                      //           4 /
                                      //           100,
                                      //   height:
                                      //       MediaQuery.of(context).size.width *
                                      //           4 /
                                      //           100,
                                      //   child: Image.asset(
                                      //     selectsocailmedialist[index]["image"],
                                      //   ),
                                      // )
                                    ],
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ));
          }));
        });
  }
}
