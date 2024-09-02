import 'package:flutter/material.dart';
import '../../utilities/app_button.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';
import '../../utilities/app_snackbar_toast_message.dart';
import 'login_screen.dart';


class ResetPassword extends StatefulWidget {
  static String routeName = './ChangePassword';
  const ResetPassword({Key? key}) : super(key: key);
  @override
  // ignore: library_private_types_in_public_api
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController newPasswordTextEditingController =
      TextEditingController();

  TextEditingController confirmPasswordTextEditingController =
      TextEditingController();

  bool isNewPasswordVisible = true;
  bool isConfirmPasswordVisible = true;
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  createPasswordUserValidation(
      String newPassword, String confirmPassword) async {
    if (newPassword.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.newPasswordMsg[language]);
      return false;
    }
      else if (newPassword.length<6) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.passwordMinMessage[language]);
      return false;
    } 
   else if (confirmPassword.isEmpty) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.confirmPasswordMsg[language]);
      return false;
    }
     else if (confirmPassword.length<6) {
      SnackBarToastMessage.showSnackBar(
          context, AppLanguage.passwordMinMessage[language]);
      return false;
    } 
     else {
      createPasswordUserApiCall(newPassword, confirmPassword);
    }
  }

  createPasswordUserApiCall(String newPassword, String confirmPassword) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Login()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
          systemOverlayStyle: AppConstant.systemUiOverlayStyle,
          leading: InkWell(
              onTap: () {},
              child: IconButton(
                icon: Image.asset(
                  AppImage.backIcon,
                  width: MediaQuery.of(context).size.width * 8 / 100,
                  height: MediaQuery.of(context).size.height * 8 / 100,
                ),
                onPressed: () {
                   Navigator.pop(context);
                },
              )),
          title: Text(AppLanguage.createNewPasswordText[language],
              style: AppConstant.appBarTitleStyle),
        ),
      
        body: SafeArea(
          child: Container(
            width: MediaQuery.of(context).size.width * 100 / 100,
            height: MediaQuery.of(context).size.height * 100 / 100,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 5 / 100,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    height: MediaQuery.of(context).size.height * 7 / 100,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.text,
                      controller: newPasswordTextEditingController,
                      maxLength: AppConstant.passwordMaxLength,
                      obscureText: isNewPasswordVisible,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          counterText: '',
                          suffixIcon: IconButton(
                            icon: Icon(
                              isNewPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                isNewPasswordVisible = !isNewPasswordVisible;
                              });
                            },
                          ),
                          border: OutlineInputBorder(),
                          hintText: "New Password",
                          hintStyle: AppConstant.textFilledStyle),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 4 / 100,
                ),
                Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 90 / 100,
                    height: MediaQuery.of(context).size.height * 7 / 100,
                    child: TextFormField(
                      style: TextStyle(color: Colors.black),
                      keyboardType: TextInputType.text,
                      controller: confirmPasswordTextEditingController,
                      maxLength: AppConstant.passwordMaxLength,
                      obscureText: isConfirmPasswordVisible,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          counterText: '',
                          suffixIcon: IconButton(
                            icon: Icon(
                              isConfirmPasswordVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                isConfirmPasswordVisible =
                                    !isConfirmPasswordVisible;
                              });
                            },
                          ),
                          border: OutlineInputBorder(),
                          hintText: "Confirm Password",
                          hintStyle: AppConstant.textFilledStyle),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 8 / 100,
                ),
                Container(
                    child: AppButton(
                        text: AppLanguage.sendButtonText[language],
                        onPress: () {
                          createPasswordUserValidation(
                              newPasswordTextEditingController.text,
                              confirmPasswordTextEditingController.text);
                        })),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
