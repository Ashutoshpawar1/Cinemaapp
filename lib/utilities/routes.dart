import 'package:cinemaapp/view/otherpages/addon_playlist.dart';
import 'package:cinemaapp/view/otherpages/announcement_saved.dart';
import 'package:cinemaapp/view/otherpages/announcement_upload.dart';
import 'package:cinemaapp/view/otherpages/announcements.dart';
import 'package:cinemaapp/view/otherpages/archive.dart';
import 'package:cinemaapp/view/otherpages/categories.dart';
import 'package:cinemaapp/view/otherpages/channels.dart';
import 'package:cinemaapp/view/otherpages/edit.dart';
import 'package:cinemaapp/view/otherpages/explore.dart';
import 'package:cinemaapp/view/otherpages/followers.dart';
import 'package:cinemaapp/view/otherpages/history.dart';
import 'package:cinemaapp/view/otherpages/movies.dart';
import 'package:cinemaapp/view/otherpages/movies1.dart';
import 'package:cinemaapp/view/otherpages/notification1.dart';
import 'package:cinemaapp/view/otherpages/notification_comment.dart';
import 'package:cinemaapp/view/otherpages/playlist.dart';
import 'package:cinemaapp/view/otherpages/profile1.dart';
import 'package:cinemaapp/view/otherpages/saved.dart';
import 'package:cinemaapp/view/otherpages/search.dart';
import 'package:cinemaapp/view/otherpages/series.dart';
import 'package:cinemaapp/view/otherpages/series1.dart';
import 'package:cinemaapp/view/otherpages/socialmedia.dart';
import 'package:cinemaapp/view/otherpages/subscription_history.dart';
import 'package:cinemaapp/view/otherpages/upload.dart';
import 'package:cinemaapp/view/otherpages/video_upload.dart';
import 'package:cinemaapp/view/otherpages/videos.dart';
import 'package:cinemaapp/view/otherpages/watchlater.dart';
import 'package:cinemaapp/view/otherpages/welcome.dart';
import 'package:flutter/material.dart';
import '../view/authentication/aboutUs_screen.dart';
import '../view/authentication/change_password.dart';
import '../view/authentication/contactus_screen.dart';
import '../view/authentication/content.dart';
import '../view/authentication/delete_account.dart';
import '../view/authentication/edit_profile_screen.dart';
import '../view/authentication/forgot_otp_verify_screen.dart';
import '../view/authentication/forgot_password_screen.dart';
import '../view/authentication/home_screen.dart';
import '../view/authentication/login_screen.dart';
import '../view/authentication/notifiction_screen.dart';
import '../view/authentication/otp_verify_screen.dart';
import '../view/authentication/privacy_policy_screen.dart';
import '../view/authentication/profile.dart';
import '../view/authentication/reset_password.dart';
import '../view/authentication/setting_screen.dart';
import '../view/authentication/signup_screen.dart';
import '../view/authentication/splash_screen.dart';
import '../view/authentication/terms_conditions_screen.dart';
import '../view/googlemap/location.dart';
import '../view/otherpages/detail.dart';

final Map<String, WidgetBuilder> routes = {
  //1.1 authentication route
  Setting.routeName: (context) => const Setting(),
  AboutUs.routeName: (context) => const AboutUs(),
  TermsAndConditions.routeName: (context) => const TermsAndConditions(),
  PrivacyPolicy.routeName: (context) => const PrivacyPolicy(),
  ContactUs.routeName: (context) => const ContactUs(),
  DeleteAccount.routeName: (context) => const DeleteAccount(),
  EditProfile.routeName: (context) => const EditProfile(),
  ForgotOtpVerify.routeName: (context) => const ForgotOtpVerify(),
  ForgotPassword.routeName: (context) => const ForgotPassword(),
  OtpVerify.routeName: (context) => const OtpVerify(),

  ResetPassword.routeName: (context) => const ResetPassword(),
  ChangePassword.routeName: (context) => const ChangePassword(),
  Location.routeName: (context) => const Location(),

  // ============================25-05-24 ===========================
  // ===========================cinema app==========================

  Splash.routeName: (context) => const Splash(),
  Welcome.routeName: (context) => const Welcome(),
  Home.routeName: (context) => const Home(),
  Login.routeName: (context) => const Login(),
  Signup.routeName: (context) => const Signup(),
  Explore.routeName: (context) => const Explore(),
  Notification1.routeName: (context) => const Notification1(),
  Announcements.routeName: (context) => const Announcements(),
  Notifications.routeName: (context) => const Notifications(),
  Profile.routeName: (context) => const Profile(),
  SocialMedia.routeName: (context) => const SocialMedia(),
  Videos.routeName: (context) => const Videos(),
  History.routeName: (context) => const History(),
  Detail.routeName: (context) => const Detail(),
  Followers.routeName: (context) => const Followers(),
  Upload.routeName: (context) => const Upload(),
  Edit.routeName: (context) => const Edit(),
  Saved.routeName: (context) => const Saved(),
  Watchlater.routeName: (context) => const Watchlater(),
  Archive.routeName: (context) => const Archive(),
  Search.routeName: (context) => const Search(),
  Playlist.routeName: (context) => const Playlist(),
  Profile1.routeName: (context) => const Profile1(),
  Categories.routeName: (context) => const Categories(),
  Movies.routeName: (context) => const Movies(),
  Series.routeName: (context) => const Series(),
  Channels.routeName: (context) => const Channels(),
  Movies1.routeName: (context) => const Movies1(),
  Series1.routeName: (context) => const Series1(),
  SubscriptionHistory.routeName: (context) => const SubscriptionHistory(),
  Announcementupload.routeName: (context) => const Announcementupload(),
  Videoupload.routeName: (context) => const Videoupload(),
  Addonplaylist.routeName: (context) => const Addonplaylist(),
  AnnouncementComment.routeName: (context) => const AnnouncementComment(),
  Content.routeName: (context) => Content(
        header: '',
        content: '',
      ),
  AnnouncementSaved.routeName: (context) => const AnnouncementSaved(),
};
