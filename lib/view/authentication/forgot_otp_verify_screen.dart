import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/view/otherpages/newpassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class ForgotOtpVerify extends StatefulWidget {
  static String routeName = './ForgotOtpVerify';
  const ForgotOtpVerify({super.key});

  @override
  State<ForgotOtpVerify> createState() => _ForgotOtpVerifyState();
}

class _ForgotOtpVerifyState extends State<ForgotOtpVerify> {
  FocusNode? pin1FocusNode;
  FocusNode? pin2FocusNode;
  FocusNode? pin3FocusNode;
  FocusNode? pin4FocusNode;

  TextEditingController firstInputController = TextEditingController();
  TextEditingController secondInputController = TextEditingController();
  TextEditingController thirdInputController = TextEditingController();
  TextEditingController forthInputController = TextEditingController();

  String firstInput = '';
  String secondInput = '';
  String thirdInput = '';
  String forthInput = '';

  @override
  void initState() {
    super.initState();
    pin1FocusNode = FocusNode();
    pin2FocusNode = FocusNode();
    pin3FocusNode = FocusNode();
    pin4FocusNode = FocusNode();
  }

  @override
  void dispose() {
    super.dispose();
    pin1FocusNode!.dispose();
    pin2FocusNode!.dispose();
    pin3FocusNode!.dispose();
    pin4FocusNode!.dispose();
  }

  void nextField(String value, FocusNode focusNode) {
    if (value.length == 1) {
      focusNode.requestFocus();
    }
  }

  void previousField(String value, FocusNode focusNode) {
    focusNode.requestFocus();
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return WillPopScope(
       onWillPop: () {
        return Future.value(false);
      },
      child: GestureDetector(
        onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
        child: Scaffold(
          body: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
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
                        // color: Colors.blue,
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
                  Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              AppLanguage.otptext[language],
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 1 / 100,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              AppLanguage.otptext1[language],
                              style: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 80 / 100,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                child: Center(
                                  child: TextFormField(
                                    controller: firstInputController,
                                    cursorColor: AppColor.primaryColor,
                                    autofocus: true,
                                    readOnly: false,
                                    focusNode: pin1FocusNode,
                                    decoration: const InputDecoration(
                                      counterText: '',
                                      border: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.primaryColor,
                                            width: 1.0),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(1)),
                                      ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: AppColor.greyLightColor,
                                            width: 1.0),
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                      ),
                                      focusedBorder: GradientOutlineInputBorder(
                                        borderRadius:
                                            BorderRadius.all(Radius.circular(5)),
                                        gradient: LinearGradient(colors: [
                                          AppColor.redcolor,
                                          AppColor.pinkcolor,
                                          AppColor.lpinkcolor,
                                          AppColor.mbluecolor,
                                          AppColor.lbluecolor,
                                        ]),
                                      ),
                                      contentPadding: EdgeInsets.all((8)),
                                      // fillColor:
                                      //     (firstInputController.text.length > 0)
                                      //         ? AppColor.themeColor
                                      //         : Colors.white,
                                      // filled: true,
                                    ),
                                    style: const TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      // color:
                                      //     (firstInputController.text.length > 0)
                                      //         ? Colors.black
                                      //         : Colors.black
                                    ),
                                    keyboardType: TextInputType.number,
                                    // inputFormatters: <TextInputFormatter>[
                                    //   FilteringTextInputFormatter.allow(
                                    //       RegExp(r'[0-9]')),
                                    //   FilteringTextInputFormatter.digitsOnly,
                                    // ],
                                    textAlign: TextAlign.center,
                                    maxLength: 1,
                                    onTap: () {
                                      pin1FocusNode!.requestFocus();
                                    },
                                    onChanged: (value) {
                                      // print(firstInputController.text.length);
                                      // print(firstInputController.text);
                                      firstInputController.text = value;
                                      nextField(value, pin2FocusNode!);
                                    },
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                child: TextFormField(
                                  controller: secondInputController,
                                  cursorColor: AppColor.primaryColor,
                                  maxLength: 1,
                                  autofocus: true,
                                  readOnly: false,
                                  keyboardType: TextInputType.number,
                                  // inputFormatters: <TextInputFormatter>[
                                  //   FilteringTextInputFormatter.allow(
                                  //       RegExp(r'[0-9]')),
                                  //   FilteringTextInputFormatter.digitsOnly,
                                  // ],
                                  textAlign: TextAlign.center,
                                  focusNode: pin2FocusNode,
                                  onTap: () {
                                    pin2FocusNode!.requestFocus();
                                  },
                                  onChanged: (value) {
                                    if (value.length == 0) {
                                      secondInputController.text = '';
                                      previousField(value, pin1FocusNode!);
                                    } else {
                                      secondInputController.text = value;
                                      nextField(value, pin3FocusNode!);
                                    }
                                  },
                                  decoration: const InputDecoration(
                                    counterText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                          width: 1.0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor,
                                          width: 1.0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    focusedBorder: GradientOutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      gradient: LinearGradient(colors: [
                                        AppColor.redcolor,
                                        AppColor.pinkcolor,
                                        AppColor.lpinkcolor,
                                        AppColor.mbluecolor,
                                        AppColor.lbluecolor,
                                      ]),
                                    ),
                                    contentPadding: EdgeInsets.all((8)),
                                  ),
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          (secondInputController.text.length > 0)
                                              ? Colors.black
                                              : Colors.black),
                                ),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                child: TextFormField(
                                  controller: thirdInputController,
                                  cursorColor: AppColor.primaryColor,
                                  maxLength: 1,
                                  autofocus: true,
                                  readOnly: false,
                                  keyboardType: TextInputType.number,
                                  // inputFormatters: <TextInputFormatter>[
                                  //   FilteringTextInputFormatter.allow(
                                  //       RegExp(r'[0-9]')),
                                  //   FilteringTextInputFormatter.digitsOnly,
                                  // ],
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    counterText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                          width: 1.0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor,
                                          width: 1.0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    focusedBorder: GradientOutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      gradient: LinearGradient(colors: [
                                        AppColor.redcolor,
                                        AppColor.pinkcolor,
                                        AppColor.lpinkcolor,
                                        AppColor.mbluecolor,
                                        AppColor.lbluecolor,
                                      ]),
                                    ),
                                    contentPadding: EdgeInsets.all((8)),
                                  ),
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          (thirdInputController.text.length > 0)
                                              ? Colors.black
                                              : Colors.black),
                                  focusNode: pin3FocusNode,
                                  onTap: () {
                                    pin3FocusNode!.requestFocus();
                                  },
                                  onChanged: (value) {
                                    if (value.length == 0) {
                                      thirdInputController.text = '';
                                      previousField(value, pin2FocusNode!);
                                    } else {
                                      nextField(value, pin4FocusNode!);
                                      thirdInputController.text = value;
                                    }
                                  },
                                ),
                              ),
                              Container(
                                width:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                height:
                                    MediaQuery.of(context).size.width * 15 / 100,
                                child: TextFormField(
                                  controller: forthInputController,
                                  cursorColor: AppColor.primaryColor,
                                  focusNode: pin4FocusNode,
                                  autofocus: true,
                                  readOnly: false,
                                  maxLength: 1,
      
                                  keyboardType: TextInputType.number,
                                  // inputFormatters: <TextInputFormatter>[
                                  //   FilteringTextInputFormatter.allow(
                                  //       RegExp(r'[0-9]')),
                                  //   FilteringTextInputFormatter.digitsOnly,
                                  // ],
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    counterText: '',
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.primaryColor,
                                          width: 1.0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(12.0)),
                                    ),
                                    enabledBorder: OutlineInputBorder(
                                      borderSide: BorderSide(
                                          color: AppColor.greyLightColor,
                                          width: 1.0),
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                    ),
                                    focusedBorder: GradientOutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5)),
                                      gradient: LinearGradient(colors: [
                                        AppColor.redcolor,
                                        AppColor.pinkcolor,
                                        AppColor.lpinkcolor,
                                        AppColor.mbluecolor,
                                        AppColor.lbluecolor,
                                      ]),
                                    ),
                                    contentPadding: EdgeInsets.all((8)),
                                  ),
                                  style: TextStyle(
                                      fontSize: 28,
                                      fontWeight: FontWeight.w500,
                                      color:
                                          (forthInputController.text.length > 0)
                                              ? Colors.black
                                              : Colors.black),
                                  onTap: () {
                                    pin4FocusNode?.requestFocus();
                                  },
                                  onChanged: (value) {
                                    if (value.length == 0) {
                                      forthInputController.text = '';
                                      previousField(value, pin3FocusNode!);
                                    } else {
                                      forthInputController.text = value;
                                    }
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                        AppButton(
                            text: AppLanguage.verifyButtonText[language],
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const NewPassword()));
                            }),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            alignment: Alignment.center,
                            height: MediaQuery.of(context).size.height * 7 / 100,
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                border: GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    AppColor.redcolor,
                                    AppColor.pinkcolor,
                                    AppColor.lpinkcolor,
                                    AppColor.mbluecolor,
                                    AppColor.lbluecolor,
                                  ]),
                                )),
                            child: Text(
                              AppLanguage.sendotptext[language],
                              style: TextStyle(
                                  fontSize: 15,
                                  color: AppColor.themeColor1,
                                  fontFamily: AppFont.fontFamily,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            child: Text(
                              AppLanguage.changeEmailText[language],
                              style: const TextStyle(
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                                decorationColor: AppColor.primaryColor,
                                color: AppColor.primaryColor,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            AppLanguage.gobackText[language],
                            style: const TextStyle(
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600,
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.themeColor1,
                              color: AppColor.themeColor1,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
