import 'package:cinemaapp/utilities/app_color.dart';
import 'package:cinemaapp/view/otherpages/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../utilities/app_image.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});
  static String routeName = './Splash';

  @override
  // ignore: library_private_types_in_public_api
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Welcome()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: AppColor.themeColor,
        statusBarIconBrightness: Brightness.dark));
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 100 / 100,
          width: MediaQuery.of(context).size.width * 100 / 100,
          child: Image.asset(
            AppImage.splashImage,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
