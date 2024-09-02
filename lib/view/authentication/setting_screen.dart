import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/view/authentication/change_password.dart';
import 'package:cinemaapp/view/authentication/contactus_screen.dart';
import 'package:cinemaapp/view/authentication/delete_account.dart';
import 'package:cinemaapp/view/authentication/home_screen.dart';
import 'package:cinemaapp/view/otherpages/subscription_history.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_language.dart';
import 'content.dart';
import 'login_screen.dart';

class Setting extends StatefulWidget {
  static String routeName = './setting';

  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Home()));
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
                      AppLanguage.settingsText[language],
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

            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.height * 22 / 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    AppLanguage.generalsettingsText[language],
                    style: const TextStyle(
                        color: AppColor.themeColor1,
                        fontFamily: AppFont.fontFamily,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ChangePassword()));
                    },
                    child: Container(
                      color: AppColor.secondryColor,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                child: Image.asset(AppImage.keyIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              Text(
                                AppLanguage.changePasswordText[language],
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                  // fontSize: 14
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.rightarrowIcon),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const ContactUs()));
                    },
                    child: Container(
                      color: AppColor.secondryColor,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                child: Image.asset(AppImage.phoneIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              Text(
                                AppLanguage.contactUsText[language],
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.rightarrowIcon),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const SubscriptionHistory()));
                    },
                    child: Container(
                      color: AppColor.secondryColor,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    4.5 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    4.5 /
                                    100,
                                child: Image.asset(AppImage.sunscriptionIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              Text(
                                AppLanguage.subscriptionText[language],
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.rightarrowIcon),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),

            SizedBox(
              height: MediaQuery.of(context).size.height * 3 / 100,
            ),
            Container(
              width: MediaQuery.of(context).size.width * 90 / 100,
              height: MediaQuery.of(context).size.height * 40 / 100,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    child: Text(
                      AppLanguage.otherText[language],
                      style: const TextStyle(
                          color: AppColor.themeColor1,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w600,
                          fontSize: 16),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Content.routeName,
                          arguments: AllContent(
                              header: AppLanguage.termsConditionText[language],
                              content: "Terms and Condition"));
                    },
                    child: Container(
                      color: AppColor.secondryColor,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    4.5 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    4.5 /
                                    100,
                                child: Image.asset(AppImage.termsconditionIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              Text(
                                AppLanguage.termsConditionText[language],
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.rightarrowIcon),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Content.routeName,
                          arguments: AllContent(
                              header: AppLanguage.privacyPolicyText[language],
                              content: "Privacy Policy"));
                    },
                    child: Container(
                      color: AppColor.secondryColor,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width *
                                    4.5 /
                                    100,
                                height: MediaQuery.of(context).size.width *
                                    4.5 /
                                    100,
                                child: Image.asset(AppImage.privacyIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              Text(
                                AppLanguage.privacyPolicyText[language],
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.rightarrowIcon),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, Content.routeName,
                          arguments: AllContent(
                              header: AppLanguage.aboutUsText[language],
                              content: "About Us"));
                    },
                    child: Container(
                      color: AppColor.secondryColor,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                child: Image.asset(AppImage.aboutusIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              Text(
                                AppLanguage.aboutUsText[language],
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.rightarrowIcon),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    color: AppColor.secondryColor,
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    height: MediaQuery.of(context).size.height * 5 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 4.5 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 4.5 / 100,
                              child: Image.asset(AppImage.ratingIcon),
                            ),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 4 / 100,
                            ),
                            Text(
                              AppLanguage.rateAppText[language],
                              style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 5 / 100,
                          height: MediaQuery.of(context).size.width * 5 / 100,
                          child: Image.asset(AppImage.rightarrowIcon),
                        )
                      ],
                    ),
                  ),
                  Container(
                    color: AppColor.secondryColor,
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    height: MediaQuery.of(context).size.height * 5 / 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 4.5 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 4.5 / 100,
                              child: Image.asset(AppImage.shareIcon),
                            ),
                            SizedBox(
                              width:
                                  MediaQuery.of(context).size.width * 4 / 100,
                            ),
                            Text(
                              AppLanguage.shareAppText[language],
                              style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 5 / 100,
                          height: MediaQuery.of(context).size.width * 5 / 100,
                          child: Image.asset(AppImage.rightarrowIcon),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DeleteAccount()));
                    },
                    child: Container(
                      color: AppColor.secondryColor,
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      height: MediaQuery.of(context).size.height * 5 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 4 / 100,
                                child: Image.asset(AppImage.deleteIcon),
                              ),
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 4 / 100,
                              ),
                              Text(
                                AppLanguage.deleteAccount[language],
                                style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 5 / 100,
                            height: MediaQuery.of(context).size.width * 5 / 100,
                            child: Image.asset(AppImage.rightarrowIcon),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 5 / 100,
            ),
            GestureDetector(
              onTap: () => _showAlertDialog(context),
              child: Container(
                height: MediaQuery.of(context).size.height * 7 / 100,
                width: MediaQuery.of(context).size.width * 90 / 100,
                decoration: BoxDecoration(
                  border: Border.all(color: AppColor.themeColor1),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.width * 4 / 100,
                      width: MediaQuery.of(context).size.width * 4 / 100,
                      child: Image.asset(AppImage.logouttIcon),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 2 / 100,
                    ),
                    Text(
                      AppLanguage.logoutText[language],
                      style: const TextStyle(
                          color: AppColor.themeColor1,
                          fontFamily: AppFont.fontFamily,
                          fontWeight: FontWeight.w500,
                          fontSize: 16),
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

//=================== Alert Box ===============
  _showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        AppLanguage.noText[language],
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text(AppLanguage.yesText[language],
          style: TextStyle(color: Colors.black)),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Login(),
          ),
        );
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.logoutModelText[language]),
      content: Text(AppLanguage.exitLogout[language]),
      actions: [
        cancelButton,
        continueButton,
      ],
    );
    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
