import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_color.dart';
import '../../utilities/app_constant.dart';
import '../../utilities/app_font.dart';
import '../../utilities/app_image.dart';
import '../../utilities/app_language.dart';

class SubscriptionHistory extends StatefulWidget {
  const SubscriptionHistory({super.key});
  static String routeName = './SubscriptionHistory';

  @override
  State<SubscriptionHistory> createState() => _SubscriptionHistoryState();
}

class _SubscriptionHistoryState extends State<SubscriptionHistory> {
  List<dynamic> SubscriptionList = <dynamic>[
    {
      "amount": "6.99",
      "status": "Ongoing",
      "date": "17 May 24",
      "transactionId": "6876879591",
    },
    {
      "amount": "6.99",
      "status": "Expired",
      "date": "16 May 24",
      "transactionId": "6876879591",
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
                child: Column(children: [
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
                            AppLanguage.subscriptionText[language],
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
                    height: MediaQuery.of(context).size.height *3 / 100,
                  ),

                  Expanded(
                      flex: 1,
                      child: Container(
                          width: MediaQuery.of(context).size.width * 90 / 100,
                          // color: Colors.blue,
                          color: AppColor.secondryColor,
                          child: SingleChildScrollView(
                              child: Wrap(
                                  alignment: WrapAlignment.spaceBetween,
                                  children: [
                                ...List.generate(
                                    SubscriptionList.length,
                                    (index) => Container(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              90 /
                                              100,
                                          // color: Colors.blue,
                                          margin: EdgeInsets.only(bottom: 25),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // color: Colors.blue,
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceBetween,
                                                  children: [
                                                    Row(
                                                      children: [
                                                        Container(
                                                          alignment:
                                                              Alignment.center,
                                                          height: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .height *
                                                              2.5 /
                                                              100,
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              17 /
                                                              100,
                                                          decoration: BoxDecoration(
                                                              color: AppColor
                                                                  .redcolor,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          5)),
                                                          child: Text(
                                                            "Monthly",
                                                            style: TextStyle(
                                                                fontFamily: AppFont
                                                                    .fontFamily,
                                                                color: AppColor
                                                                    .secondryColor,
                                                                fontSize: 11,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500),
                                                          ),
                                                        ),
                                                        SizedBox(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              1 /
                                                              100,
                                                        ),
                                                        Text(
                                                          SubscriptionList[
                                                              index]["amount"],
                                                          style: TextStyle(
                                                              fontFamily: AppFont
                                                                  .fontFamily,
                                                              color: AppColor
                                                                  .primaryColor,
                                                              fontSize: 17,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w600),
                                                        ),
                                                      ],
                                                    ),
                                                    Container(
                                                      alignment:
                                                          Alignment.centerRight,
                                                      width:
                                                          MediaQuery.of(context)
                                                                  .size
                                                                  .width *
                                                              20 /
                                                              100,
                                                      child: Text(
                                                        SubscriptionList[index]
                                                            ["status"],
                                                        style: TextStyle(
                                                            fontFamily: AppFont
                                                                .fontFamily,
                                                            color: SubscriptionList[
                                                                            index]
                                                                        [
                                                                        "status"] ==
                                                                    "Ongoing"
                                                                ? Colors.green
                                                                : Colors.red,
                                                            fontWeight:
                                                                FontWeight
                                                                    .w500),
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5 /
                                                    100,
                                              ),
                                              Text(
                                                AppLanguage
                                                    .forvideosText[language],
                                                style: TextStyle(
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    color: AppColor.themeColor,
                                                    fontSize: 13,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5 /
                                                    100,
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    SubscriptionList[index]
                                                        ["date"],
                                                    style: TextStyle(
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        color: AppColor
                                                            .greyLightColor,
                                                        // fontSize: 13,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.5 /
                                                            100,
                                                  ),
                                                  Container(
                                                    height:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .height *
                                                            2 /
                                                            100,
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            0.2 /
                                                            100,
                                                    color:
                                                        AppColor.greyLightColor,
                                                  ),
                                                  SizedBox(
                                                    width:
                                                        MediaQuery.of(context)
                                                                .size
                                                                .width *
                                                            1.5 /
                                                            100,
                                                  ),
                                                  Text(
                                                    AppLanguage.transactionIDText[
                                                            language] +
                                                        SubscriptionList[index]
                                                            ["transactionId"],
                                                    style: TextStyle(
                                                        fontFamily:
                                                            AppFont.fontFamily,
                                                        color: AppColor
                                                            .greyLightColor,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                              SizedBox(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.5 /
                                                    100,
                                              ),
                                              Text(
                                                AppLanguage
                                                        .cancelSubscriptionText[
                                                    language],
                                                style: TextStyle(
                                                    decoration: TextDecoration
                                                        .underline,
                                                    decorationColor: Colors.red,
                                                    fontFamily:
                                                        AppFont.fontFamily,
                                                    // fontSize: 13,
                                                    color: Colors.red,
                                                    fontWeight:
                                                        FontWeight.w500),
                                              ),
                                            ],
                                          ),
                                        ))
                              ]))))
                ]))));
  }
}
