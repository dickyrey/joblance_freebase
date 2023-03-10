import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:joblance_firebase/src/presentation/bloc/company/company_watcher/company_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/popular_job_watcher/popular_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/recently_added_job_watcher/recently_added_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/saved_job_watcher/saved_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/pages/chat_page.dart';
import 'package:joblance_firebase/src/presentation/pages/home_page.dart';
import 'package:joblance_firebase/src/presentation/pages/notifications_page.dart';
import 'package:joblance_firebase/src/presentation/pages/profile_page.dart';
import 'package:joblance_firebase/src/presentation/pages/saved_jobs_page.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  const BottomNavigationBarWidget({Key? key, this.index = 0}) : super(key: key);
  final int index;

  @override
  State<BottomNavigationBarWidget> createState() =>
      _BottomNavigationBarWidgetState();
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _selectedIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.index);
    Future.microtask(() {
      context
          .read<CompanyWatcherBloc>()
          .add(const CompanyWatcherEvent.fetchCompany());
      context
          .read<ProfileWatcherBloc>()
          .add(const ProfileWatcherEvent.fetchProfile());
      context
          .read<PopularJobWatcherBloc>()
          .add(const PopularJobWatcherEvent.fetchPopularJobs());
      context
          .read<RecentlyAddedJobWatcherBloc>()
          .add(const RecentlyAddedJobWatcherEvent.fetchRecentlyJobs());
      context
          .read<SavedJobWatcherBloc>()
          .add(const SavedJobWatcherEvent.fetchSavedJobs());
    });
  }

  final List<Widget> _tabView = const [
    HomePage(),
    SavedJobPage(),
    ChatPage(),
    NotificationsPage(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: PageView(
        controller: _controller,
        physics: const NeverScrollableScrollPhysics(),
        onPageChanged: (v) => setState(() => _selectedIndex = v),
        children: _tabView,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        backgroundColor: theme.cardColor,
        onTap: (v) => setState(() {
          _selectedIndex = v;
          _controller.animateToPage(
            v,
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeIn,
          );
        }),
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(
              IconlyBold.category,
              color: theme.primaryColor,
            ),
            icon: Icon(
              IconlyLight.category,
              color: theme.disabledColor,
            ),
            label: AppLocalizations.of(context)!.hi,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              IconlyBold.bookmark,
              color: theme.primaryColor,
            ),
            icon: Icon(
              IconlyLight.bookmark,
              color: theme.disabledColor,
            ),
            label: AppLocalizations.of(context)!.hi,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              IconlyBold.chat,
              color: theme.primaryColor,
            ),
            icon: Icon(
              IconlyLight.chat,
              color: theme.disabledColor,
            ),
            label: AppLocalizations.of(context)!.hi,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              IconlyBold.notification,
              color: theme.primaryColor,
            ),
            icon: Icon(
              IconlyLight.notification,
              color: theme.disabledColor,
            ),
            label: AppLocalizations.of(context)!.hi,
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(
              IconlyBold.profile,
              color: theme.primaryColor,
            ),
            icon: Icon(
              IconlyLight.profile,
              color: theme.disabledColor,
            ),
            label: AppLocalizations.of(context)!.hi,
          ),
        ],
      ),
    );
  }
}
