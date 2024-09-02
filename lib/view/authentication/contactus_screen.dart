import 'package:cinemaapp/utilities/app_button.dart';
import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class ContactUs extends StatefulWidget {
  static String routeName = './ContactUs';

  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  TextEditingController fullNameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController messageTextEditingController = TextEditingController();
  FocusNode namefocusnode = FocusNode();
  FocusNode emailfocusnode = FocusNode();
  FocusNode messagefocusnode = FocusNode();


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
                        child:    Text(
                        AppLanguage.contactUsText[language],
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
                  flex:1,
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 5 / 100,
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: TextFormField(
                            maxLines: 1,
                            style: const TextStyle(
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.name,
                            maxLength: AppConstant.fullNameText,
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
                              ),  contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                              prefixIcon: IconButton(
                                color: AppColor.secondryColor,
                                  onPressed: () {},
                                  icon: Image.asset(
                                     namefocusnode.hasFocus
                                        ? AppImage.profileShowIcon
                                        : AppImage.profileIcon,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
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
                        //textfield
                        Container(
                          height: MediaQuery.of(context).size.height * 7 / 100,
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: TextFormField(
                            style: const TextStyle(
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
                                color: AppColor.secondryColor,
                                  onPressed: () {},
                                  icon: Image.asset(
                                     emailfocusnode.hasFocus
                                        ? AppImage.showmailIcon
                                        : AppImage.mailIcon,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
                              hintText: AppLanguage.entterEmailText[language],
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
                        Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: TextFormField(
                            maxLines: 4,
                            style: const TextStyle(
                              color: AppColor.primaryColor,
                            ),
                            textAlignVertical: TextAlignVertical.center,
                            keyboardType: TextInputType.multiline,
                            maxLength: AppConstant.messageMaxLenth,
                            focusNode: messagefocusnode,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15)),
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.greyLightColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
                              ),
                              focusedBorder: const GradientOutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15)),
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
                                      messagefocusnode.hasFocus
                                        ? AppImage. pencilShowwIcon
                                        : AppImage.pencilIcon,
                                    alignment: Alignment.topLeft,
                                    height: MediaQuery.of(context).size.width *
                                        22 /
                                        100,
                                    width: MediaQuery.of(context).size.width *
                                        5 /
                                        100,
                                  )),
                              hintText: AppLanguage.typemessagehintText[language],
                             hintStyle: const TextStyle(
                                  color: AppColor.greyLightColor,
                                  fontFamily: AppFont.fontFamily,
                                  fontSize: 14),
                              counterText: '',
                            ),
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height * 8 / 100,
                        ),
                        AppButton(
                            text: AppLanguage.submitButtonText[language],
                            onPress: () {

                              Navigator.pop(context);
                            })
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
