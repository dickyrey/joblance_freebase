import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:joblance_firebase/src/presentation/bloc/client/client_watcher/client_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/popular_job_watcher/popular_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/recently_added_job_watcher/recently_added_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/saved_job_watcher/saved_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/pages/client/chat_page.dart';
import 'package:joblance_firebase/src/presentation/pages/client/home_page.dart';
import 'package:joblance_firebase/src/presentation/pages/client/notifications_page.dart';
import 'package:joblance_firebase/src/presentation/pages/client/profile_page.dart';
import 'package:joblance_firebase/src/presentation/pages/client/saved_jobs_page.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({Key? key, this.index = 0}) : super(key: key);
  final int index;

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.index);
    Future.microtask(() {
      context
          .read<PopularJobWatcherBloc>()
          .add(const PopularJobWatcherEvent.fetchPopularJobs());
      context
          .read<RecentlyAddedJobWatcherBloc>()
          .add(const RecentlyAddedJobWatcherEvent.fetchRecentlyJobs());
      context
          .read<SavedJobWatcherBloc>()
          .add(const SavedJobWatcherEvent.fetchSavedJobs());
      context
          .read<ClientWatcherBloc>()
          .add(const ClientWatcherEvent.fetchClientInformation());
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
