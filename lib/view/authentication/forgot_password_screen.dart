import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/view/authentication/forgot_otp_verify_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class ForgotPassword extends StatefulWidget {
  static String routeName = './ForgotPassword';

  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController forgotTextEditingController = TextEditingController();
  FocusNode emailfocusnode =FocusNode();

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
                  height: MediaQuery.of(context).size.height * 1 / 100,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 90 / 100,
                  child: Column(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Text(
                            AppLanguage.forgotPassword[language],
                            style: const TextStyle(
                                color: AppColor.primaryColor,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 22,
                                fontWeight: FontWeight.w600),
                          )),
                     
                      Container(
                        alignment: Alignment.topLeft,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Text(
                            
                            AppLanguage.forgotpassText[language],
                            style: const TextStyle(
                              
                                color: AppColor.greyLightColor,
                                fontFamily: AppFont.fontFamily,
                                fontSize: 14,
                                fontWeight: FontWeight.w500),
                          )),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          controller: forgotTextEditingController,
                          style: const TextStyle(
                            // height: 1,
                            color: AppColor.primaryColor,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.emailAddress,
                          maxLength: AppConstant.emailMaxLength,
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
                            contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                            prefixIcon: IconButton(
                              color:AppColor.secondryColor ,
                                onPressed: () {},
                                icon: Image.asset( emailfocusnode.hasFocus? AppImage.showmailIcon:
                                  AppImage.mailIcon ,
                                  height: MediaQuery.of(context).size.height *
                                      5 /
                                      100,
                                  width: MediaQuery.of(context).size.width *
                                      5 /
                                      100,
                                )),
                            // suffixIcon: IconButton(
                            //     onPressed: () {
                            // },
                            //     icon: Image.asset(
                            //       AppImage.greenclickImg,
                            //       width:
                            //           MediaQuery.of(context).size.width * 5 / 100,
                            //     )),

                            hintText: AppLanguage.entterEmailText[language],
                            hintStyle:
                                const TextStyle(color: AppColor.greyLightColor,    fontFamily: AppFont.fontFamily,
                                  fontSize: 13   ),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      AppButton(
                          text: AppLanguage.sendButtonText[language],
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ForgotOtpVerify()));
                          }),
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
                              decoration: TextDecoration.underline,
                              decorationColor: AppColor.themeColor1,
                              color: AppColor.themeColor1,
                              fontFamily: AppFont.fontFamily,
                              fontWeight: FontWeight.w600),
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
    );
  }
}
