import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/view/authentication/forgot_password_screen.dart';
import 'package:cinemaapp/view/authentication/home_screen.dart';
import 'package:cinemaapp/view/authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class Login extends StatefulWidget {
  static String routeName = './Login';

  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  FocusNode emailfocusnode = FocusNode();
  FocusNode passwordfocusnode = FocusNode();
  bool ispasswordvisi = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));

    return WillPopScope(
      onWillPop: () {
        return _showAlertDialog(context);
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: SafeArea(
              child: Container(
            height: MediaQuery.of(context).size.height * 100 / 100,
            width: MediaQuery.of(context).size.width * 100 / 100,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(AppImage.backgrounfdImage),
                    fit: BoxFit.fill)),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 12 / 100,
                  ),
                  Row(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width * 80 / 100,
                        height: MediaQuery.of(context).size.height * 10 / 100,
                        child: Image.asset(
                          AppImage.headingImage,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLanguage.signinheadingText1[language],
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontFamily: AppFont.fontFamily,
                              fontSize: 22,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Text(
                          AppLanguage.signinheadingText2[language],
                          style: const TextStyle(
                              color: AppColor.greyLightColor,
                              fontFamily: AppFont.fontFamily,
                              fontSize: 13,
                              fontWeight: FontWeight.w600),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height *7/ 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: TextFormField(
                            controller: emailTextEditingController,
                            focusNode: emailfocusnode,
                            style:  TextStyle(
                              height: 0.9,

                              color: AppColor.primaryColor,
                            
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.emailAddress,
                            maxLength: AppConstant.emailMaxLength,
                            decoration: InputDecoration(
                              // contentPadding: EdgeInsets.symmetric(vertical: 2),
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
                                  color: AppColor.secondryColor,
                                  onPressed: () {},
                                  icon: Image.asset(
                                    emailfocusnode.hasFocus
                                        ? AppImage.showmailIcon
                                        : AppImage.mailIcon,
                                    height: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),

                                  // contentPadding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),



                              // suffixIcon: IconButton(
                              //     onPressed: () {},
                              //     icon: Image.asset(
                              //       AppImage.greenclickIcon,
                              //       height: MediaQuery.of(context).size.height *
                              //           5 /
                              //           100,
                              //       width: MediaQuery.of(context).size.width *
                              //           5 /
                              //           100,
                              //     )),
                              hintText: AppLanguage.entterEmailText[language],
                              hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 13),
                              counterText: '',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: TextFormField(
                            controller: passwordTextEditingController,
                            style: const TextStyle(
                              height: 1,
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.text,
                            maxLength: AppConstant.passwordMaxLength,
                            obscureText: ispasswordvisi,
                            focusNode: passwordfocusnode,
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
                                  color: AppColor.secondryColor,
                                  onPressed: () {},
                                  icon: Image.asset(
                                    passwordfocusnode.hasFocus
                                        ? AppImage. lockshowwIcon
                                        : AppImage.lockIcon,
                                    height: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
                              suffixIcon: IconButton(
                                  color: AppColor.secondryColor,
                                  onPressed: () {
                                    setState(() {
                                      ispasswordvisi = !ispasswordvisi;
                                    });
                                  },
                                  icon: Image.asset(
                                    ispasswordvisi
                                        ? AppImage.eyehideIcon
                                        : AppImage.eyeshowIcon,
                                    height: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
                              hintText: AppLanguage.hintpasswordText[language],
                              hintStyle: const TextStyle(
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 13,
                                  color: AppColor.greyLightColor),
                              counterText: '',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const ForgotPassword()));
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            alignment: Alignment.topRight,
                            child: Text(
                              AppLanguage.forgotPassword[language],
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 2 / 100,
                        ),
                        AppButton(
                            text: AppLanguage.signinText[language],
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Home()));
                            }),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 20 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Signup()));
                          },
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  AppLanguage.dontaccountText[language],
                                  style: const TextStyle(
                                      color: AppColor.primaryColor,
                                      fontSize: 15,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w600),
                                ),
                                Text(
                                  AppLanguage.createAccountText[language],
                                  style: const TextStyle(
                                      fontSize: 15,
                                      color: AppColor.themeColor1,
                                      fontFamily: AppFont.fontFamily,
                                      fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )),
        ),
      ),
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
