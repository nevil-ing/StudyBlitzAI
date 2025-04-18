import 'package:flutter/material.dart';
import 'package:nevilai/app/ui/app.dart';
import 'package:nevilai/app/ui/screens/auth_screen/auth_screen.dart';
import 'package:nevilai/app/ui/screens/auth_screen/login_screen.dart';
import 'package:nevilai/app/ui/screens/auth_screen/register_screen.dart';
import 'package:nevilai/app/ui/screens/explain_topic_screen/topic_summarizer.dart';
import 'package:nevilai/app/ui/screens/home/home_page.dart';
import 'package:nevilai/app/ui/screens/onboarding_screen/onboard_screen.dart';
import 'package:nevilai/app/ui/screens/profile/profile_screen.dart';
import 'package:nevilai/app/ui/screens/splash_screen/splash_screen.dart';
import '../ui/screens/chat_screen/chat_screen.dart';
import '../ui/screens/exam_prep/exam_preparation.dart';
import '../ui/screens/exam_prep/questions_page.dart';
import '../ui/screens/settings_screen/settings_screen.dart';
import 'routes.dart';

class PageRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
            return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.initialRoute:
             return MaterialPageRoute(builder: (context) => const InitialScreen());
      case Routes.onboardRoute:
             return MaterialPageRoute(builder: (context) => const Onboardscreen());
      case Routes.authRoute:
            return MaterialPageRoute(builder: (context) => AuthStateScreen());
      case Routes.homeRoute:
          return MaterialPageRoute(builder: (context) => const HomePage());
      case Routes.profileRoute:
          return MaterialPageRoute(builder: (context) => ProfileScreen());
      case Routes.topicRoute:
          return MaterialPageRoute(builder: (context) =>  TopicScreen());
      case Routes.examRoute:
          return MaterialPageRoute(builder: (context) =>  ExamPreparation());
      case Routes.quizRoute:
          return MaterialPageRoute(builder: (context) => const QuestionsPage());    
      case Routes.chatRoute:
        return MaterialPageRoute(builder: (context) => ChatScreen());
      case  Routes.loginRoute:
        return MaterialPageRoute(builder: (context) => LoginScreen());  
      case Routes.registerRoute:
         return MaterialPageRoute(builder: (context) => const RegisterScreen());
      case Routes.settingsRoute:
          return MaterialPageRoute(builder: (context) => const SettingsScreen());   
      default:
        return MaterialPageRoute(
            builder: (BuildContext context) => const Scaffold(
                  body: Text('This Page does not Exist'),
                ));
    }
  }
}
