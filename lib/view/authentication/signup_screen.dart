import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/view/authentication/otp_verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_language.dart';

class Signup extends StatefulWidget {
  static String routeName = './Signup';
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();
  TextEditingController confirmpasswordTextEditingController =
      TextEditingController();

  FocusNode namefocusnode = FocusNode();
  FocusNode emailfocusnode = FocusNode();
  FocusNode passwordfocusnode = FocusNode();
  FocusNode confirmpasswordfocusnode = FocusNode();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: Container(
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
                    height: MediaQuery.of(context).size.height * 3 / 100,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              AppLanguage.createAccountText[language],
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              AppLanguage.signupText1[language],
                              style: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
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
                            keyboardType: TextInputType.name,
                            maxLength: AppConstant.fullNameText,
                            controller: nameTextEditingController,
                            focusNode: namefocusnode,
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
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              prefixIcon: IconButton(
                                  color: AppColor.secondryColor,
                                  onPressed: () {},
                                  icon: Image.asset(
                                    namefocusnode.hasFocus
                                        ? AppImage.profileShowIcon
                                        : AppImage.profileIcon,
                                    height: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
                              // suffixIcon: IconButton(
                              //     onPressed: () {},
                              //     icon: Image.asset(
                              //       AppImage.greenclickImg,
                              //       width: MediaQuery.of(context).size.width *
                              //           5 /
                              //           100,
                              //     )),
                              hintText: AppLanguage.namehintText[language],
                              hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
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
                            style: const TextStyle(
                              // height: 1,
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.text,
                            maxLength: AppConstant.emailMaxLength,
                            controller: emailTextEditingController,
                            focusNode: emailfocusnode,
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
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
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
                              // suffixIcon: IconButton(
                              //     onPressed: () {},
                              //     icon: Image.asset(
                              //       AppImage.greenclickImg,
                              //       width: MediaQuery.of(context).size.width *
                              //           5 /
                              //           100,
                              //     )),
                              hintText: AppLanguage.entterEmailText[language],
                              hintStyle: const TextStyle(
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14,
                                  color: AppColor.greyLightColor),
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
                            style: const TextStyle(
                              height: 1,
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.name,
                            maxLength: AppConstant.passwordMaxLength,
                            controller: passwordTextEditingController,
                            obscureText: isPasswordVisible,
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
                                    // AppImage.lockIcon,
                                    passwordfocusnode.hasFocus
                                        ? AppImage.lockshowwIcon
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
                                      isPasswordVisible = !isPasswordVisible;
                                    });
                                  },
                                  icon: Image.asset(
                                    isPasswordVisible
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
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
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
                            style: const TextStyle(
                              height: 1,
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.name,
                            maxLength: AppConstant.passwordMaxLength,
                            obscureText: isConfirmPasswordVisible,
                            focusNode: confirmpasswordfocusnode,
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
                                    confirmpasswordfocusnode.hasFocus
                                        ? AppImage.lockshowwIcon
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
                                      isConfirmPasswordVisible =
                                          !isConfirmPasswordVisible;
                                    });
                                  },
                                  icon: Image.asset(
                                    isConfirmPasswordVisible
                                        ? AppImage.eyehideIcon
                                        : AppImage.eyeshowIcon,
                                    height: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
                              hintText: AppLanguage.confirmpassText[language],
                              hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
                              counterText: '',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        AppButton(
                            text: AppLanguage.signupText[language],
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const OtpVerify()));
                            }),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                AppLanguage.alreadyaccountText[language],
                                style: const TextStyle(
                                    color: AppColor.primaryColor,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
                              ),
                              Text(
                                AppLanguage.signinText[language],
                                style: const TextStyle(
                                    color: AppColor.themeColor1,
                                    fontFamily: AppFont.fontFamily,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 15),
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
          ),
        ),
      ),
    );
  }
}
