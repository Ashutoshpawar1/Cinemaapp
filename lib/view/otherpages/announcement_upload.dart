import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/otherpages/announcements.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Announcementupload extends StatefulWidget {
  static String routeName = './Announcementupload';
  const Announcementupload({super.key});

  @override
  State<Announcementupload> createState() => _AnnouncementuploadState();
}

class _AnnouncementuploadState extends State<Announcementupload> {
  TextEditingController messageTextEditingController = TextEditingController();
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
                          AppLanguage.announcementsText[language],
                          style: AppConstant.appBarTitleStyle,
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 10 / 100,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 7 / 100,
                ),

                //============================header END================================

                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    // height: MediaQuery.of(context).size.height * 7 / 100,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.multiline,
                      controller: messageTextEditingController,
                      maxLines: 5,
                      maxLength: AppConstant.messageMaxLenth,
                      decoration: InputDecoration(
                          enabledBorder: const OutlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColor.greyLightColor),
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          focusedBorder: const GradientOutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            gradient: LinearGradient(colors: [
                              AppColor.redcolor,
                              AppColor.pinkcolor,
                              AppColor.lpinkcolor,
                              AppColor.mbluecolor,
                              AppColor.lbluecolor,
                            ]),
                          ),
                          border: OutlineInputBorder(),
                          fillColor: Colors.white,
                          filled: true,
                          counterText: '',
                          hintText: AppLanguage.announcementsText[language],
                          hintStyle: AppConstant.textFilledStyle),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 7 / 100,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Announcements()));
                  },
                  child: Container(
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
                            height: MediaQuery.of(context).size.width * 6 / 100,
                            width: MediaQuery.of(context).size.width * 6 / 100,
                            child: Image.asset(AppImage.uploadannouncementIcon),
                          ),
                        ]),
                  ),
                )
              ],
            ),
          )),
        ));
  }
}
