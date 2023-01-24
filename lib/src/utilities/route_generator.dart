import 'package:flutter/material.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';
import 'package:joblance_firebase/src/domain/entities/profile.dart';
import 'package:joblance_firebase/src/presentation/pages/browse_job_page.dart';
import 'package:joblance_firebase/src/presentation/pages/interest_page.dart';
import 'package:joblance_firebase/src/presentation/pages/job_details_page.dart';
import 'package:joblance_firebase/src/presentation/pages/language_page.dart';
import 'package:joblance_firebase/src/presentation/pages/message_detail_page.dart';
import 'package:joblance_firebase/src/presentation/pages/on_boarding_page.dart';
import 'package:joblance_firebase/src/presentation/pages/profile_detail_page.dart';
import 'package:joblance_firebase/src/presentation/pages/profile_form_page.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/job_form_recruiter_page.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/messages_recruiter_page.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/register_recruiter_page.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/register_success_recruiter_page.dart';
import 'package:joblance_firebase/src/presentation/pages/search_job_page.dart';
import 'package:joblance_firebase/src/presentation/pages/setting_page.dart';
import 'package:joblance_firebase/src/presentation/pages/sign_in_page.dart';
import 'package:joblance_firebase/src/presentation/pages/sign_up_page.dart';
import 'package:joblance_firebase/src/presentation/pages/splash_page.dart';
import 'package:joblance_firebase/src/presentation/widgets/bottom_navigation_bar.dart';
import 'package:joblance_firebase/src/presentation/widgets/recruiter_botton_navigation_bar.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      // Core
      case SPLASH:
        return MaterialPageRoute(
          builder: (_) => const SplashPage(),
        );

      // Bottom Navigation Page List
      case HOME:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationBarWidget(),
        );
      case SAVED_JOBS:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationBarWidget(index: 1),
        );
      case MESSAGES:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationBarWidget(index: 2),
        );
      case NOTIFICATIONS:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationBarWidget(index: 3),
        );
      case PROFILE:
        return MaterialPageRoute(
          builder: (_) => const BottomNavigationBarWidget(index: 4),
        );
      case LANGUAGE:
        return MaterialPageRoute(
          builder: (_) => const LanguagePage(),
        );

      // Client Side
      case BROWSE_JOB:
        return MaterialPageRoute(builder: (_) => const BrowseJobPage());
      case INTEREST:
        return MaterialPageRoute(
          builder: (_) => const InterestPage(),
        );
      case JOB_DETAILS:
        if (args is int) {
          return MaterialPageRoute(builder: (_) => JobDetailsPage(id: args));
        }
        return _errorRoute();
      case MESSAGE_DETAIL:
        if (args is Chat) {
          return MaterialPageRoute(builder: (_) => MessageDetailPage(message: args));
        }
        return _errorRoute();
      case ON_BOARDING:
        return MaterialPageRoute(
          builder: (_) => const OnBoardingPage(),
        );
      case PROFILE_DETAIL:
        return MaterialPageRoute(
          builder: (_) => const ProfileDetailPage(),
        );
      case PROFILE_FORM:
        if (args is Profile) {
          return MaterialPageRoute(
            builder: (_) => ProfileFormPage(profile: args),
          );
        }
        return _errorRoute();
      case SEARCH_JOB:
        return MaterialPageRoute(
          builder: (_) => const SearchJobPage(),
        );
      case SETTING:
        return MaterialPageRoute(
          builder: (_) => const SettingPage(),
        );
      case SIGN_IN:
        return MaterialPageRoute(
          builder: (_) => const SignInPage(),
        );
      case SIGN_UP:
        return MaterialPageRoute(
          builder: (_) => const SignUpPage(),
        );

      // Recruiter Side
      case HOME_RECRUITER:
        return MaterialPageRoute(
          builder: (_) => const RecruiterBottomNavigationBar(),
        );
      case JOB_FORM_RECRUITER:
        return MaterialPageRoute(
          builder: (_) => const JobFormRecruiterPage(),
        );
      case MESSAGES_RECRUITER:
        if (args is Chat) {
          return MaterialPageRoute(
            builder: (_) => MessagesRecruiterPage(chat: args),
          );
        }
        return _errorRoute();
      case CHAT_RECRUITER:
        return MaterialPageRoute(
          builder: (_) => const RecruiterBottomNavigationBar(index: 3),
        );
      case REGISTER_RECRUITER:
        return MaterialPageRoute(
          builder: (_) => const RegisterRecruiterPage(),
        );
      case REGISTER_RECRUITER_SUCCESS:
        return MaterialPageRoute(
          builder: (_) => const RegisterSuccessRecruiterPage(),
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(
      builder: (_) {
        return const Scaffold(
          body: Center(
            child: Text('ERROR 404 NOT FOUND'),
          ),
        );
      },
    );
  }
}
