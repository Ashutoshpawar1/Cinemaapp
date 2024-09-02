import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Welcome extends StatefulWidget {
  static String routeName = './Welcome';

  const Welcome({super.key});
  @override
  State<Welcome> createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return WillPopScope(
      onWillPop: () {
        return _showAlertDialog(context);
      },
      child: Scaffold(
          body: SafeArea(
              child: Container(
        height: MediaQuery.of(context).size.height * 100 / 100,
        width: MediaQuery.of(context).size.width * 100 / 100,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AppImage.welcomeImage), fit: BoxFit.fill)),
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 50 / 100),
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 90 / 100,
                child: Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      child: Text(
                        AppLanguage.welcomeText[language],
                        style: const TextStyle(
                            color: AppColor.secondryColor,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 30,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          AppLanguage.inText[language],
                          style: const TextStyle(
                              color: AppColor.secondryColor,
                              fontFamily: AppFont.fontFamily,
                              fontSize: 30,
                              fontWeight: FontWeight.w700),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width * 2 / 100,
                        ),
                        Text(
                          AppLanguage.signinheadingText[language],
                          style: const TextStyle(
                              color: AppColor.themeColor,
                              fontFamily: AppFont.fontFamily,
                              fontSize: 37,
                              fontWeight: FontWeight.w800),
                        )
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100),
                    Text(
                        """ Lorem ipsum dolor sit amet consectetur. Dictum rhoncus adipiscing nunc dictum ultrices urna urna aliquet massa. Pellentesque mauris nunc tempor sed gravida eu proin cursus. """,
                        style: TextStyle(
                            color: AppColor.secondryColor,
                            fontFamily: AppFont.fontFamily,
                            fontSize: 11,
                            fontWeight: FontWeight.w500)),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100),
                    Row(
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                          width: MediaQuery.of(context).size.width * 6 / 100,
                          decoration: BoxDecoration(
                              color: AppColor.secondryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 0.5 / 100),
                        Container(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                          width: MediaQuery.of(context).size.width * 2 / 100,
                          decoration: BoxDecoration(
                              color: AppColor.secondryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                            width:
                                MediaQuery.of(context).size.width * 0.5 / 100),
                        Container(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                          width: MediaQuery.of(context).size.width * 2 / 100,
                          decoration: BoxDecoration(
                              color: AppColor.secondryColor,
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 6 / 100),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(40),
                            color: AppColor.themeColor),
                        child: Text(
                          AppLanguage.continueText[language],
                          style: const TextStyle(
                              fontSize: 18,
                              color: AppColor.secondryColor,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ))),
    );
  }

  _showAlertDialog(BuildContext context) {
    // set up the buttons
    Widget cancelButton = TextButton(
      child: Text(
        "No",
        style: TextStyle(color: Colors.red),
      ),
      onPressed: () {
        Navigator.of(context).pop();
      },
    );
    Widget continueButton = TextButton(
      child: Text("Yes", style: TextStyle(color: Colors.black)),
      onPressed: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    );
    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: Text(AppLanguage.areYouSureText[language]),
      content: Text(AppLanguage.exitAppText[language]),
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
