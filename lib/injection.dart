import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:http/http.dart' as http;
import 'package:joblance_firebase/src/common/network_info.dart';
import 'package:joblance_firebase/src/data/datasources/applicant_remote_data_source.dart';
import 'package:joblance_firebase/src/data/datasources/authentication_remote_data_source.dart';
import 'package:joblance_firebase/src/data/datasources/category_remote_data_source.dart';
import 'package:joblance_firebase/src/data/datasources/client_remote_data_source.dart';
import 'package:joblance_firebase/src/data/datasources/job_remote_data_source.dart';
import 'package:joblance_firebase/src/data/datasources/message_remote_data_source.dart';
import 'package:joblance_firebase/src/data/datasources/notifications_remote_data_source.dart';
import 'package:joblance_firebase/src/data/repositories/applicant_repository_impl.dart';
import 'package:joblance_firebase/src/data/repositories/authentication_repository_impl.dart';
import 'package:joblance_firebase/src/data/repositories/category_repository_impl.dart';
import 'package:joblance_firebase/src/data/repositories/client_repository_impl.dart';
import 'package:joblance_firebase/src/data/repositories/job_repository_impl.dart';
import 'package:joblance_firebase/src/data/repositories/message_repository_impl.dart';
import 'package:joblance_firebase/src/data/repositories/notifications_repository_impl.dart';
import 'package:joblance_firebase/src/domain/repositories/applicant_repository.dart';
import 'package:joblance_firebase/src/domain/repositories/authentication_repository.dart';
import 'package:joblance_firebase/src/domain/repositories/category_repository.dart';
import 'package:joblance_firebase/src/domain/repositories/client_repository.dart';
import 'package:joblance_firebase/src/domain/repositories/job_repository.dart';
import 'package:joblance_firebase/src/domain/repositories/message_repository.dart';
import 'package:joblance_firebase/src/domain/repositories/notifications_repository.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/create_user.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/sign_in_google.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/sign_in_user.dart';
import 'package:joblance_firebase/src/domain/usecases/auth/sign_out_user.dart';
import 'package:joblance_firebase/src/domain/usecases/get_active_jobs.dart';
import 'package:joblance_firebase/src/domain/usecases/get_applicants.dart';
import 'package:joblance_firebase/src/domain/usecases/get_browse_jobs.dart';
import 'package:joblance_firebase/src/domain/usecases/get_categories.dart';
import 'package:joblance_firebase/src/domain/usecases/get_client_information.dart';
import 'package:joblance_firebase/src/domain/usecases/get_job_details.dart';
import 'package:joblance_firebase/src/domain/usecases/get_messages.dart';
import 'package:joblance_firebase/src/domain/usecases/get_messages_recruiter.dart';
import 'package:joblance_firebase/src/domain/usecases/get_notifications.dart';
import 'package:joblance_firebase/src/domain/usecases/get_popular_jobs.dart';
import 'package:joblance_firebase/src/domain/usecases/get_recently_added_jobs.dart';
import 'package:joblance_firebase/src/domain/usecases/get_saved_jobs.dart';
import 'package:joblance_firebase/src/domain/usecases/profile/get_profile.dart';
import 'package:joblance_firebase/src/presentation/bloc/applicant/applicant_watcher/applicant_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/category/category_watcher/category_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/client/client_form/client_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/client/client_watcher/client_watcher_bloc.dart';
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
import 'package:joblance_firebase/src/presentation/bloc/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';

final locator = GetIt.instance;

void init() {
  // External

  final dataConnectionChecker = DataConnectionChecker();
  locator.registerLazySingleton(
    () => dataConnectionChecker,
  );

  final networkInfo = NetworkInfoImpl(locator());
  locator.registerLazySingleton<NetworkInfo>(
    () => networkInfo,
  );

  final firebaseAuth = FirebaseAuth.instance;
  locator.registerLazySingleton(
    () => firebaseAuth,
  );

  final googleSignIn = GoogleSignIn();
  locator.registerLazySingleton(
    () => googleSignIn,
  );

  final firebaseFirestore = FirebaseFirestore.instance;
  locator.registerLazySingleton(
    () => firebaseFirestore,
  );

  final firebaseStorage = FirebaseStorage.instance;
  locator.registerLazySingleton(
    () => firebaseStorage,
  );

  final httpExternal = http.Client();
  locator.registerLazySingleton(
    () => httpExternal,
  );

  /// List of [Data Sources] Class from folder [Data] & [Domain]
  ///
  final applicantDataSource = ApplicantRemoteDataSourceImpl();
  locator.registerLazySingleton<ApplicantRemoteDataSource>(
    () => applicantDataSource,
  );
  final authDataSource = AuthenticationRemoteDataSourceImpl(
    firebaseAuth: locator(),
    firestore: locator(),
    googleSignIn: locator(),
  );
  locator.registerLazySingleton<AuthenticationRemoteDataSource>(
    () => authDataSource,
  );

  final categoryRemoteDataSource = CategoryRemoteDataSourceImpl();
  locator.registerLazySingleton<CategoryRemoteDataSource>(
    () => categoryRemoteDataSource,
  );

  final clientRemoteDataSource = ClientRemoteDataSourceImpl();
  locator.registerLazySingleton<ClientRemoteDataSource>(
    () => clientRemoteDataSource,
  );

  final jobRemoteDataSource = JobRemoteDataSourceImpl();
  locator.registerLazySingleton<JobRemoteDataSource>(
    () => jobRemoteDataSource,
  );

  final messageRemoteDataSource = MessageRemoteDataSourceImpl();
  locator.registerLazySingleton<MessageRemoteDataSource>(
    () => messageRemoteDataSource,
  );

  final notificationsRemoteDataSource = NotificationsRemoteDataSourceImpl();
  locator.registerLazySingleton<NotificationsRemoteDataSource>(
    () => notificationsRemoteDataSource,
  );

  /// List of [Repositories] Class from folder [Data] & [Domain]
  ///
  final applicantRepository = ApplicantRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<ApplicantRepository>(
    () => applicantRepository,
  );

  final authenticationRepository =
      AuthenticationRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<AuthenticationRepository>(
    () => authenticationRepository,
  );

  final categoryRepository = CategoryRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<CategoryRepository>(
    () => categoryRepository,
  );

  final clientRepository = ClientRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<ClientRepository>(
    () => clientRepository,
  );

  final jobRepository = JobRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<JobRepository>(
    () => jobRepository,
  );

  final messageRepository = MessageRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<MessageRepository>(
    () => messageRepository,
  );

  final notificationsRepository =
      NotificationsRepositoryImpl(dataSource: locator());
  locator.registerLazySingleton<NotificationsRepository>(
    () => notificationsRepository,
  );

  /// [Usecases] allow class to parse data into [BLoC]
  ///
  ///

  /// [Auth] Folder
  ///
  final createUserWithEmailUseCase = CreateUserWithEmail(locator());
  locator.registerLazySingleton(
    () => createUserWithEmailUseCase,
  );
  final signInWithGoogleUseCase = SignInWithGoogle(locator());
  locator.registerLazySingleton(
    () => signInWithGoogleUseCase,
  );
  final signInWithEmailUseCase = SignInWithEmail(locator());
  locator.registerLazySingleton(
    () => signInWithEmailUseCase,
  );
  final signOutUserUseCase = SignOutUser(locator());
  locator.registerLazySingleton(
    () => signOutUserUseCase,
  );

  /// [Profile] Folder
  ///
  final getProfileUseCase = GetProfile(locator());
  locator.registerLazySingleton(
    () => getProfileUseCase,
  );

  final getActiveJobsUseCase = GetActiveJobs(locator());
  locator.registerLazySingleton(
    () => getActiveJobsUseCase,
  );

  final getApplicantsUseCase = GetApplicants(locator());
  locator.registerLazySingleton(
    () => getApplicantsUseCase,
  );

  final getBrowseJobsUseCase = GetBrowseJobs(locator());
  locator.registerLazySingleton(
    () => getBrowseJobsUseCase,
  );

  final getCategoriesUseCase = GetCategories(locator());
  locator.registerLazySingleton(
    () => getCategoriesUseCase,
  );

  final getClientInformationUseCase = GetClientInformation(locator());
  locator.registerLazySingleton(
    () => getClientInformationUseCase,
  );

  final getJobDetailsUseCase = GetJobDetails(locator());
  locator.registerLazySingleton(
    () => getJobDetailsUseCase,
  );

  final getMessagesRecruiterUseCase = GetMessagesRecruiter(locator());
  locator.registerLazySingleton(
    () => getMessagesRecruiterUseCase,
  );

  final getMessagesUseCase = GetMessages(locator());
  locator.registerLazySingleton(
    () => getMessagesUseCase,
  );

  final getNotificationsUseCase = GetNotifications(locator());
  locator.registerLazySingleton(
    () => getNotificationsUseCase,
  );

  final getPopularJobsUseCase = GetPopularJobs(locator());
  locator.registerLazySingleton(
    () => getPopularJobsUseCase,
  );

  final getRecentlyAddedJobsUseCase = GetRecentlyAddedJobs(locator());
  locator.registerLazySingleton(
    () => getRecentlyAddedJobsUseCase,
  );

  final getSavedJobsUseCase = GetSavedJobs(locator());
  locator.registerLazySingleton(
    () => getSavedJobsUseCase,
  );

  // BLoCs
  final applicantWatcherBloc = ApplicantWatcherBloc(locator());
  locator.registerLazySingleton(
    () => applicantWatcherBloc,
  );
  final authWatcherBloc = AuthWatcherBloc(locator());
  locator.registerLazySingleton(
    () => authWatcherBloc,
  );
  final signInFormBloc = SignInFormBloc(locator());
  locator.registerLazySingleton(
    () => signInFormBloc,
  );
  final signUpFormBloc = SignUpFormBloc(locator());
  locator.registerLazySingleton(
    () => signUpFormBloc,
  );
  final categoryWatcherBloc = CategoryWatcherBloc(locator());
  locator.registerLazySingleton(
    () => categoryWatcherBloc,
  );
  final clientFormBloc = ClientFormBloc();
  locator.registerLazySingleton(
    () => clientFormBloc,
  );
  final clientWatcherBloc = ClientWatcherBloc(locator());
  locator.registerLazySingleton(
    () => clientWatcherBloc,
  );
  final interestFormBloc = InterestFormBloc(locator());
  locator.registerLazySingleton(
    () => interestFormBloc,
  );
  final activeJobWatcherBloc = ActiveJobWatcherBloc(locator());
  locator.registerLazySingleton(
    () => activeJobWatcherBloc,
  );
  final browseJobWatcherBloc = BrowseJobWatcherBloc(locator());
  locator.registerLazySingleton(
    () => browseJobWatcherBloc,
  );

  final jobDetailsWatcherBloc = JobDetailsWatcherBloc(locator());
  locator.registerLazySingleton(
    () => jobDetailsWatcherBloc,
  );

  final jobFormBloc = JobFormBloc(locator());
  locator.registerLazySingleton(
    () => jobFormBloc,
  );

  final jobSearchFormBloc = JobSearchFormBloc(locator());
  locator.registerLazySingleton(
    () => jobSearchFormBloc,
  );

  final popularJobWatcherBloc = PopularJobWatcherBloc(locator());
  locator.registerLazySingleton(
    () => popularJobWatcherBloc,
  );

  final recentlyAddedJobWatcherBloc = RecentlyAddedJobWatcherBloc(locator());
  locator.registerLazySingleton(
    () => recentlyAddedJobWatcherBloc,
  );

  final savedJobWatcherBloc = SavedJobWatcherBloc(locator());
  locator.registerLazySingleton(
    () => savedJobWatcherBloc,
  );

  final languageFormBloc = LanguageFormBloc();
  locator.registerLazySingleton(
    () => languageFormBloc,
  );

  final messageRecruiterWatcherBloc = MessageRecruiterWatcherBloc(locator());
  locator.registerLazySingleton(
    () => messageRecruiterWatcherBloc,
  );

  final messageWatcherBloc = MessageWatcherBloc(locator());
  locator.registerLazySingleton(
    () => messageWatcherBloc,
  );

  final notificationsWatcherBloc = NotificationsWatcherBloc(locator());
  locator.registerLazySingleton(
    () => notificationsWatcherBloc,
  );

  final profileWatcherBloc = ProfileWatcherBloc(locator());
  locator.registerLazySingleton(
    () => profileWatcherBloc,
  );

  final themeCubit = ThemeCubit();
  locator.registerLazySingleton(
    () => themeCubit,
  );
}
