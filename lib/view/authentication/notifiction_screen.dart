import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/utilities/app_font.dart';
import 'package:cinemaapp/utilities/app_image.dart';
import 'package:cinemaapp/view/otherpages/notification1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_language.dart';

class Notifications extends StatefulWidget {
  static String routeName = './Notifications';
  const Notifications({super.key});

  @override
  State<Notifications> createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  // ========================notification list=========================
  List<dynamic> notifications = <dynamic>[
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "detail" : "Replied to your comment",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
     "name": "122 Channel",
      "detail" : "Liked your video",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "27 Channel",
      "detail" : "Commented to your Video ",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William",
      "detail" : "Commented your announcement",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
     "name": "27 Channel",
      "detail" : "Comment your video",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
//===================
    {
      "image": "./assets/icons/image_profile1.jpg",



















      
      "name": "Sophia William Replied to your comment",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William Replied to your comment",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
    {
      "image": "./assets/icons/image_profile1.jpg",
      "name": "Sophia William Replied to your comment",
      "time": "20m ago",
      "image1": "./assets/icons/image_home1.jpg"
    },
  ];

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
                        AppLanguage.notificationText[language],
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
              height: MediaQuery.of(context).size.height * 5 / 100,
            ),
            Expanded(
              flex: 1,
              child: SingleChildScrollView(
                child: Wrap(children: [
                  ...List.generate(
                    notifications.length,
                    (index) => GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Notification1()));
                      },
                      child: Container(
                        height: MediaQuery.of(context).size.height * 12 / 100,
                        width: MediaQuery.of(context).size.width * 90 / 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              height:
                                  MediaQuery.of(context).size.width * 10 / 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          notifications[index]['image']),
                                      fit: BoxFit.cover)),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width *
                                      50 /
                                      100,
                                  child: Text(notifications[index]['name'],
                                      maxLines: 2,
                                      style: const TextStyle(
                                          color: AppColor.primaryColor,
                                          fontFamily: AppFont.fontFamily,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600)),
                                ),
                                Text(notifications[index]['time'],
                                    style: const TextStyle(
                                        color: AppColor.greyLightColor,
                                        fontFamily: AppFont.fontFamily,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500))
                              ],
                            ),
                            Container(
                              width:
                                  MediaQuery.of(context).size.width * 25 / 100,
                              child:
                                  Image.asset(notifications[index]['image1']),
                            )
                          ],
                        ),
                      ),
                    ),
                  )
                ]),
              ),
            )
          ],
        ),
      )),
    
    );
  }
}
