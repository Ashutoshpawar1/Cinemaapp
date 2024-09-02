import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/authentication/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Edit extends StatefulWidget {
  static String routeName = './Edit';
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  TextEditingController titleTextEditingController = TextEditingController();
  TextEditingController contentTextEditingController = TextEditingController();
  TextEditingController yearTextEditingController = TextEditingController();



  
  List<dynamic> categorylist = <dynamic>[
    {
      "name": "Horror",
      "image": './assets/icons/icon_redclick.png',
      "status": "false"
    },
    {
      "name": "Action/Thriller",
      "image": './assets/icons/icon_redclick.png',
      "status": "false"
    },
    {
      "name": "Comedy",
      "image": './assets/icons/icon_redclick.png',
      "status": "false"
    },
    {
      "name": "Friction",
      "image": './assets/icons/icon_redclick.png',
      "status": "false"
    },
  ];



  String selectCategory = "NA";

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
                              height:
                                  MediaQuery.of(context).size.width * 6 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 5 / 100,
                              child: Image.asset(AppImage.backIcon),
                            ),
                          ),
                          Text(
                            AppLanguage.editText[language],
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
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    //============================ Main container================================
                    Expanded(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.videosText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        90 /
                                        100,
                                    height: MediaQuery.of(context).size.width *
                                        50 /
                                        100,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        image: const DecorationImage(
                                            image:
                                                AssetImage(AppImage.devilImage),
                                            fit: BoxFit.cover)),
                                  ),
                                  Positioned(
                                      top: 70,
                                      right: 140,
                                      child: Container(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                12 /
                                                100,
                                        height:
                                            MediaQuery.of(context).size.width *
                                                12 /
                                                100,
                                        child: Image.asset(AppImage.playIcon),
                                      )),
                                ],
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.titleText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    8 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: TextFormField(
                                  style: const TextStyle(
                                    color: AppColor.primaryColor,
                                  ),
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.name,
                                  maxLength: AppConstant.fullNameText,
                                  controller: titleTextEditingController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColor.greyLightColor),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText:
                                        AppLanguage.titlehintText[language],
                                    hintStyle: const TextStyle(
                                        color: AppColor.greyLightColor),
                                    counterText: '',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.contentcreditText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100,
                              ),
                              Container(
                                // height:
                                //     MediaQuery.of(context).size.height * 7 / 100,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: TextFormField(
                                  maxLines: 5,
                                  style: const TextStyle(
                                    color: AppColor.primaryColor,
                                  ),
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.text,
                                  maxLength: AppConstant.messageMaxLenth,
                                  controller: contentTextEditingController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColor.greyLightColor),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText: AppLanguage
                                        .contentcredithintText[language],
                                    hintStyle: const TextStyle(
                                        color: AppColor.greyLightColor),
                                    counterText: '',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.yearText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    8 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: TextFormField(
                                  style: const TextStyle(
                                    color: AppColor.primaryColor,
                                  ),
                                  textAlignVertical: TextAlignVertical.center,
                                  keyboardType: TextInputType.number,
                                  maxLength: AppConstant.mobileMaxLenth,
                                  controller: yearTextEditingController,
                                  decoration: InputDecoration(
                                    border: OutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                    enabledBorder: const OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderSide: const BorderSide(
                                          color: AppColor.greyLightColor),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    hintText:
                                        AppLanguage.yearhintText[language],
                                    hintStyle: const TextStyle(
                                        color: AppColor.greyLightColor),
                                    counterText: '',
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.categoryText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    1 /
                                    100,
                              ),
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    7 /
                                    100,
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: AppColor.greyLightColor),
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                     Text(
                                       (selectCategory == "NA")?"Select Social Media":selectCategory   ,
                                      
                                      
                                      // "Select Category",
                                        style: TextStyle(
                                            color: AppColor.greyLightColor)),
                                    GestureDetector(
                                      onTap: () {
                                        saveshareprofile(context);
                                      },
                                      child: Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                7 /
                                                100,
                                        width: MediaQuery.of(context).size.width *
                                            6 /
                                            100,
                                        child:
                                            Image.asset(AppImage.downarrowIcon),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                child: Text(
                                  AppLanguage.thumbnailText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontFamily: AppFont.fontFamily,
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    90 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    50 /
                                    100,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: const DecorationImage(
                                        image: AssetImage(AppImage.devilImage),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                              Container(
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
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.push(context, MaterialPageRoute(builder: (context)=>const Home()));
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
                              ),
                              SizedBox(
                                height: MediaQuery.of(context).size.height *
                                    2 /
                                    100,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )));
  }


  
  
  void _selectCategory(name) {
    setState(
      () {
        selectCategory = name;
      },
    );
  }
  // =============this popup for save share=============

  saveshareprofile(context) {
    showModalBottomSheet<void>(
        isScrollControlled: true,
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
                              AppLanguage.categoryText[language],
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
                    // =================Main List==========================
                    Expanded(
                      flex: 1,
                      child: Wrap(
                        children: [
                          ...List.generate(
                            categorylist.length,
                            (index) => Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    _selectCategory(
                                        categorylist[index]["name"]);

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
                                              categorylist[index]["name"],
                                              style: const TextStyle(
                                                  color:
                                                      AppColor.greyLightColor,
                                                  fontFamily:
                                                      AppFont.fontFamily,
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            if (selectCategory ==
                                                categorylist[index]["name"])
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
                                                  categorylist[index]["image"],
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
