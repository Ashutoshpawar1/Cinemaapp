import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_constant.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../utilities/app_font.dart';

class Content extends StatelessWidget {
  static String routeName = './Content';

  const Content({Key? key, required String header, required String content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    AllContent? object;

    object = ModalRoute.of(context)!.settings.arguments as AllContent;

    // print("${object.header}");
    // print(object.content);

    return Scaffold(
      body: ContentScreen(
        header: object.header,
        content: object.content,
      ),
    );
  }
}

class ContentScreen extends StatefulWidget {
  final String header;
  final String content;
  const ContentScreen({super.key, required this.header, required this.content});

  State<ContentScreen> createState() => _ContentScreenState();
}

class _ContentScreenState extends State<ContentScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
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
                              width:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              child: Container(
                                height:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                width:
                                    MediaQuery.of(context).size.width * 5 / 100,
                                child: Image.asset(AppImage.backIcon),
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.center,
                            width: MediaQuery.of(context).size.width * 70 / 100,
                            child: Text(
                              widget.header,
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
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 4 / 100,
                    ),
                    Expanded(
                      flex: 1,
                      child: SingleChildScrollView(
                        child: Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          child: Text(
                            textAlign: TextAlign.justify,
                            """ This Mobile Application End User Terms and agreement between us.and is a your use of the APP on the MOBILE PLATFORMS and MOBILE DEVICES.  will be used you. YOU ACKN-OWLEDGE THAT YOU HAVE READ AND UNDERSTAND THIS Terms and conditions and Privacy Policy; ou REPRESENT THAT YOU ARE OF LEGAL AGE TO ENTER INTO A BINDING AGREEMENT AND ACCEPT THIS AGREEMENT AND AGREE THAT YOU ARE LEGALLY BOUND BY ITS TERMS AND CONDI-TIONS and PRIVACY POLICY. IF YOU DO NOTAGREE TO THESE TERMS AND CONDITION and PRIVACY POLICY, DO NOT DOWNLOAD/INSTALL/USE THE APPLICATION AND DELETE IT FROM YOUR MOBILE DEVICE. License Grant. Subject to the terms of this Agreement, We grant you a limited,non- exclusive, ndon-transferable license to download, install and use the Application for your personal, non-commercial use on a mobile device owned or otherwise ontrolled by you ("Mobile Device") strictly in accordance with the Application's documentation access ,stream, download and use on such Mobile Device the Content and Services made available in or herwise accessible through the Application, strictly in accordance with this Agreement and the Terms of Use applicable to such Content and Services as set forth in. License Restrictions.Licensee shall not: copy the Application, except as expressly permitted by this license; modify, translate, adapt or otherwise create derivative works or ements, whether or not patentable, of the Application; reverse engineer disassemble, decompile, decode or otherwise attempt to derive or gain access to the source code of the Application or any part thereof; remove, delete,alter or obscure any trademarks or any copyright, trademark, patent or other intellectual propertyor proprietary rights notices from the Application, including any copy thereof; rent, lease, lend, sell, sublicense, assign, distribute, publish, transfer or otherwise make available the Application or any features or functionality of the appl-  cation, to any third party for any reason, including by making the Application available on a network where it is capable of being accessed by more than one device at any time; remove, disable, circumvent or otherwise create or implement any workaround to any copy protection, rights management or security features in or protecting the Application; or use the Application in, or in association with, the design, construction, maintenance or operation of any hazardous environments or systems, including any power generation systems; aircraft navigation or communication systems, air traffic control systems or any other transport management systems; safety-critical applications, including medical or life-support systems, vehicle operation applications or any police, fire or other safety response systems; and military or aerospace applications, weapons systems or environments. Reservation of Rights. You acknowledge and agree that the Application is provided under license, and will be used by you. You do not acquire any interest in the Application under this Agreement, or any other rightsthereto """,
                            style: TextStyle(
                                fontFamily: AppFont.fontFamily,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    )
                  ],
                ))));
  }
}
