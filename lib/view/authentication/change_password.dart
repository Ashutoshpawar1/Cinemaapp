import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class ChangePassword extends StatefulWidget {
  static String routeName = './ChangePassword';
  const ChangePassword({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  TextEditingController currentPasswordTextEditingController =
      TextEditingController();

  TextEditingController newPasswordTextEditingController =
      TextEditingController();

  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  bool isPasswordVisible = true;
  bool isNewPasswordVisible = true;
  bool isConfirmPasswordVisible = true;

  FocusNode currenpasswordfocusnode = FocusNode();
  FocusNode newpasswordfocusnode = FocusNode();
  FocusNode confirmpasswordfocusnode = FocusNode();

  @override
  void initState() {
    super.initState();
  }

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
                        AppLanguage.changePassword[language],
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
              Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 8 / 100,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          style: const TextStyle(
                            color: AppColor.primaryColor,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.name,
                          maxLength: AppConstant.passwordMaxLength,
                          obscureText: isPasswordVisible,
                          focusNode: currenpasswordfocusnode,
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

                                   currenpasswordfocusnode.hasFocus
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
                            hintText: AppLanguage.currentPassword[language],
                           hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 4 / 100,
                      ),
                      Container(
                        // color: Colors.red,
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          style: const TextStyle(
                            color: AppColor.primaryColor,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.name,
                          maxLength: AppConstant.passwordMaxLength,
                          obscureText: isNewPasswordVisible,
                          focusNode: newpasswordfocusnode,
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
                              
                                   newpasswordfocusnode.hasFocus
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
                                    isNewPasswordVisible =
                                        !isNewPasswordVisible;
                                  });
                                },
                                icon: Image.asset(
                                  isNewPasswordVisible
                                      ? AppImage.eyehideIcon
                                      : AppImage.eyeshowIcon,
                                  height: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                )),
                            hintText: AppLanguage.newPasswordText[language],
                          hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 4 / 100,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          style: const TextStyle(
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
                            hintText: AppLanguage.confirmPassword[language],
                           hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5/ 100,
                      ),
                      AppButton(
                          text: AppLanguage.changePassword[language],
                          onPress: () {

                            Navigator.pop(context);
                          })
                    ],
                  ),
                ),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
