import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:joblance_firebase/injection.dart' as di;
import 'package:joblance_firebase/l10n/l10n.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/common/themes.dart';
import 'package:joblance_firebase/src/presentation/bloc/applicant/applicant_watcher/applicant_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/category/category_watcher/category_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/company/company_watcher/company_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/company/create_company/create_company_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/company/update_company_form/update_company_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/interest/interest_form/interest_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/active_job_watcher/active_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/browse_job_watcher/browse_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_details_watcher/job_details_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_form/job_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_search_form/job_search_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/popular_job_watcher/popular_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/recently_added_job_watcher/recently_added_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/saved_job_watcher/saved_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/language/language_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/message/message_recruiter_watcher/message_recruiter_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/message/message_watcher/message_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/profile/profile_form/profile_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/utilities/route_generator.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        /// [BlocProvider]
        BlocProvider(create: (context) => di.locator<ApplicantWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<AuthWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<SignInFormBloc>()),
        BlocProvider(create: (context) => di.locator<SignUpFormBloc>()),
        //*
        BlocProvider(create: (context) => di.locator<CategoryWatcherBloc>()),
        //*
        BlocProvider(create: (context) => di.locator<CompanyWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<CreateCompanyFormBloc>()),
        BlocProvider(create: (context) => di.locator<UpdateCompanyFormBloc>()),
        //*
        BlocProvider(create: (context) => di.locator<InterestFormBloc>()),
        //*
        BlocProvider(create: (context) => di.locator<ActiveJobWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<BrowseJobWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<JobDetailsWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<JobFormBloc>()),
        BlocProvider(create: (context) => di.locator<JobSearchFormBloc>()),
        BlocProvider(create: (context) => di.locator<PopularJobWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<RecentlyAddedJobWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<SavedJobWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<LanguageFormBloc>()),
        BlocProvider(create: (context) => di.locator<MessageRecruiterWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<MessageWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<NotificationsWatcherBloc>()),
        BlocProvider(create: (context) => di.locator<ProfileFormBloc>()),
        BlocProvider(create: (context) => di.locator<ProfileWatcherBloc>()),

        // Cubits
        BlocProvider(create: (context) => di.locator<ThemeCubit>()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, themeCubit) {
          return BlocBuilder<LanguageFormBloc, LanguageFormState>(
            builder: (context, languageBloc) {
              return MaterialApp(
                title: 'Joblance',
                debugShowCheckedModeBanner: false,
                theme: themeLight(context),
                darkTheme: themeDark(context),
                themeMode: (themeCubit is ThemeDark)
                    ? ThemeMode.dark
                    : ThemeMode.light,  
                supportedLocales: L10n.all,
                locale: languageBloc.selectedLocale,
                localizationsDelegates: const [
                  AppLocalizations.delegate,
                  GlobalMaterialLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                ],
                initialRoute: SPLASH,
                onGenerateRoute: RouteGenerator.generateRoute,
              );
            },
          );
        },
      ),
    );
  }
}
