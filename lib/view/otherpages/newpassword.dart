import 'package:cinemaapp/utilities/app_button.dart';
import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/utilities/app_language.dart';
import 'package:cinemaapp/view/authentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';

class NewPassword extends StatefulWidget {
  static String routeName = './NewPassword';
  const NewPassword({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _NewPasswordState createState() => _NewPasswordState();
}

class _NewPasswordState extends State<NewPassword> {
  @override
  void initState() {
    super.initState();
  }

  TextEditingController newpasswordTextEditingController =
      TextEditingController();
  TextEditingController confirmpasswordTextEditingController =
      TextEditingController();

  bool ispasswordvisi = true;
  bool ispasswordvisi2 = true;

  FocusNode passwordfocusnode = FocusNode();
  FocusNode confirmpasswordfocusnode = FocusNode();

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
                    height: MediaQuery.of(context).size.height * 2 / 100,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    child: Column(
                      children: [
                        Container(
                            width: MediaQuery.of(context).size.width * 90 / 100,
                            child: Text(
                              AppLanguage.createnewpassText[language],
                              style: const TextStyle(
                                  color: AppColor.primaryColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w600),
                            )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: TextFormField(
                            controller: newpasswordTextEditingController,
                            style: const TextStyle(
                              // height: 1,
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.name,
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
                              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                              prefixIcon: IconButton(
                                  color: AppColor.secondryColor,
                                  onPressed: () {},
                                  icon: Image.asset(

                                     passwordfocusnode.hasFocus
                                        ? AppImage. lockshowwIcon
                                        : AppImage.lockIcon,
                                    // AppImage.lockIcon,
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
                              hintText:
                                  AppLanguage.newpasswordhintText[language],
                              hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
                              counterText: '',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 3 / 100,
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
                            keyboardType: TextInputType.name,
                            maxLength: AppConstant.passwordMaxLength,
                            obscureText: ispasswordvisi2,
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
                              contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                              prefixIcon: IconButton(
                                  color: AppColor.secondryColor,
                                  onPressed: () {},
                                  icon: Image.asset(
                                    // AppImage.lockIcon,
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
                                      ispasswordvisi2 = !ispasswordvisi2;
                                    });
                                  },
                                  icon: Image.asset(
                                    ispasswordvisi2
                                        ? AppImage.eyehideIcon
                                        : AppImage.eyeshowIcon,
                                    height: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
                              hintText:
                                  AppLanguage.confirmpasswordhintText[language],
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
                            text: AppLanguage.createpasButtText[language],
                            onPress: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Login()));
                            })
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
}
