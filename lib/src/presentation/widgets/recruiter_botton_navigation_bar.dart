import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/presentation/bloc/applicant/applicant_watcher/applicant_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/active_job_watcher/active_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/message/message_recruiter_watcher/message_recruiter_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/active_job_recruiter_page.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/applicant_recruiter_page.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/chat_recruiter_page.dart';
import 'package:joblance_firebase/src/presentation/pages/recruiter/home_page_recruiter.dart';

class RecruiterBottomNavigationBar extends StatefulWidget {
  const RecruiterBottomNavigationBar({Key? key, this.index = 0}) : super(key: key);
  final int index;

  @override
  State<RecruiterBottomNavigationBar> createState() =>
      _RecruiterBottomNavigationBarState();
}

class _RecruiterBottomNavigationBarState
    extends State<RecruiterBottomNavigationBar> {
  int _selectedIndex = 0;

  late PageController _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: widget.index);
    Future.microtask(() {
      context
          .read<ActiveJobWatcherBloc>()
          .add(const ActiveJobWatcherEvent.fetchActiveJobs());
      context
          .read<MessageRecruiterWatcherBloc>()
          .add(const MessageRecruiterWatcherEvent.fetchMessages());
      context
          .read<ApplicantWatcherBloc>()
          .add(const ApplicantWatcherEvent.fetchApplicants());
    });
  }

  final List<Widget> _tabView = const [
    HomeRecruiterPage(),
    ApplicantRecruiterPage(),
    ActiveJobRecruiterPage(),
    ChatRecruiterPage(),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async {
        if (_selectedIndex == 0) {
          await Navigator.pushNamedAndRemoveUntil(
            context,
            HOME,
            (route) => false,
          );
          return true;
        }
        await _controller.animateToPage(
          0,
          duration: const Duration(milliseconds: 300),
          curve: Curves.ease,
        );
        setState(() {
          _selectedIndex = 0;
        });
        return false;
      },
      child: Scaffold(
        body: PageView(
          controller: _controller,
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
                IconlyBold.document,
                color: theme.primaryColor,
              ),
              icon: Icon(
                IconlyLight.document,
                color: theme.disabledColor,
              ),
              label: AppLocalizations.of(context)!.hi,
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(
                IconlyBold.work,
                color: theme.primaryColor,
              ),
              icon: Icon(
                IconlyLight.work,
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
          ],
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: EdgeInsets.only(bottom: Screens.heigth(context) / 9),
          child: FloatingActionButton.extended(
            onPressed: () {
              // context.read<JobFormBloc>().add(const JobFormEvent.reinitialized());
              Navigator.pushNamed(
                context,
                JOB_FORM_RECRUITER,
              );
            },
            label: Row(
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                const SizedBox(width: Const.space12),
                Text(
                  AppLocalizations.of(context)!.post_a_job,
                  style: theme.textTheme.headline4?.copyWith(
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
