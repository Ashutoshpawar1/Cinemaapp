import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/view/otherpages/socialmedia.dart';
import 'package:cinemaapp/view/otherpages/videos.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});
  static String routeName = './EditProfile';
  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String location = "";
  String locationDetails = "NA";

  String imageController = "NA";

  TextEditingController nameTextEditingController = TextEditingController();
  TextEditingController emailTextEditingController = TextEditingController();
  TextEditingController messageTextEditingController = TextEditingController();

  FocusNode namefocusnode = FocusNode();
  FocusNode emailfocusnode = FocusNode();
  FocusNode messagefocusnode = FocusNode();



  @override
  void dispose() {
    super.dispose();
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
                      // color: Colors.red,
                      alignment: Alignment.centerRight,
                      width: MediaQuery.of(context).size.width * 33 / 100,
                      child: Text(
                        AppLanguage.profileText[language],
                        style: AppConstant.appBarTitleStyle,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                          height: MediaQuery.of(context).size.height * 3 / 100,
                          width: MediaQuery.of(context).size.width * 25 / 100,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: const LinearGradient(colors: [
                              AppColor.redcolor,
                              AppColor.pinkcolor,
                              AppColor.lpinkcolor,
                              AppColor.mbluecolor,
                              AppColor.lbluecolor,
                            ]),
                          ),
                          child: Text(
                            AppLanguage.savechangewText[language],
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                                color: AppColor.secondryColor,
                                fontWeight: FontWeight.w400,
                                fontSize: 11),
                          )),
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
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Text(
                          AppLanguage.changephotoText[language],
                          style: const TextStyle(
                              color: AppColor.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 15),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      Stack(
                        children: [
                          Container(
                            height:
                                MediaQuery.of(context).size.width * 30 / 100,
                            width: MediaQuery.of(context).size.width * 30 / 100,
                            decoration: BoxDecoration(
                        shape: BoxShape.circle,
                                border: const GradientBoxBorder(
                                  gradient: LinearGradient(colors: [
                                    AppColor.redcolor,
                                    AppColor.pinkcolor,
                                    AppColor.lpinkcolor,
                                    AppColor.mbluecolor,
                                    AppColor.lbluecolor,
                                  ]),
                                ),
                                image: const DecorationImage(
                                    image: AssetImage(AppImage.profileImage),
                                    fit: BoxFit.cover)),
                          ),
                          Positioned(
                              top:
                                  MediaQuery.of(context).size.height * 11/ 100,
                              right:
                                  MediaQuery.of(context).size.width * 2.5 / 100,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 6 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 6 / 100,
                                child: Image.asset(AppImage.pencilprofileIcon),
                              ))
                        ],
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          maxLines: 1,
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
                             contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
                            hintText: AppLanguage.namehintText[language],
                            hintStyle:
                                const TextStyle(color: AppColor.greyLightColor),
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
                            // height: 1,
                            color: AppColor.primaryColor,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.emailAddress,
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
                             contentPadding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
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
                            hintText: AppLanguage.entterEmailText[language],
                            hintStyle:
                                const TextStyle(color: AppColor.greyLightColor),
                            counterText: '',
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 2 / 100,
                      ),
                      Container(
                        // height: MediaQuery.of(context).size.height * 7 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: TextFormField(
                          maxLines: 4,
                          style: const TextStyle(
                            color: AppColor.primaryColor,
                          ),
                          textAlignVertical: TextAlignVertical.center,
                          keyboardType: TextInputType.text,
                          maxLength: AppConstant.messageMaxLenth,
                          controller: messageTextEditingController,
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
                                  // AppImage.pencilIcon,
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
                            hintText: AppLanguage.bioText[language],
                            hintStyle:
                                const TextStyle(color: AppColor.greyLightColor),
                            counterText: '',
                          ),
                        ),
                      ),

                      SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SocialMedia()));
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
                          child: Text(
                            AppLanguage.addmediaText[language],
                            style: const TextStyle(
                                color: AppColor.themeColor1,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
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
                                  builder: (context) => const Videos()));
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
                          child: Text(
                            AppLanguage.editvideoText[language],
                            style: const TextStyle(
                                color: AppColor.themeColor1,
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 3 / 100,
                      ),
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
