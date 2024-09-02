import 'package:cinemaapp/utilities/app_color.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import 'login_screen.dart';

class DeleteAccount extends StatefulWidget {
  static String routeName = './DeleteAccount';
  const DeleteAccount({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DeleteAccountState createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  TextEditingController messageTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    //============================header================================
                    Container(
                      width: MediaQuery.of(context).size.width * 90 / 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Container(
                              height:
                                  MediaQuery.of(context).size.width * 6 / 100,
                              width:
                                  MediaQuery.of(context).size.width * 5 / 100,
                              child: Image.asset(AppImage.backIcon),
                            ),
                          ),
                          Text(AppLanguage.deleteAccount[language],
                              style: AppConstant.appBarTitleStyle),
                          Container()
                        ],
                      ),
                    ),
//============================ header End ================================
                    SizedBox(
                        height: MediaQuery.of(context).size.height * 5 / 100),
                    Center(
                      child: Container(
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        // height: MediaQuery.of(context).size.height * 7 / 100,
                        child: TextFormField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.multiline,
                          controller: messageTextEditingController,
                          maxLines: 5,
                          maxLength: AppConstant.messageMaxLenth,
                          decoration: InputDecoration(
                              enabledBorder: const OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: AppColor.greyLightColor),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                              ),
                              focusedBorder: const GradientOutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                gradient: LinearGradient(colors: [
                                  AppColor.redcolor,
                                  AppColor.pinkcolor,
                                  AppColor.lpinkcolor,
                                  AppColor.mbluecolor,
                                  AppColor.lbluecolor,
                                ]),
                              ),
                              border: OutlineInputBorder(),
                              fillColor: Colors.white,
                              filled: true,
                              counterText: '',
                              hintText: AppLanguage.messageText[language],
                              hintStyle: AppConstant.textFilledStyle),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: MediaQuery.of(context).size.height * 8 / 100,
                    ),
                    AppButton(
                      text: AppLanguage.submitButtonText[language],
                      onPress: () {
                        _showAlertDialog(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
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
      title: Text(AppLanguage.deleteAccountText[language]),
      content: Text(AppLanguage.exitDelete[language]),
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
