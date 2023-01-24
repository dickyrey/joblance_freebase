import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_search_form/job_search_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/saved_job_watcher/saved_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';
import 'package:octo_image/octo_image.dart';

class SavedJobPage extends StatefulWidget {
  const SavedJobPage({Key? key}) : super(key: key);

  @override
  State<SavedJobPage> createState() => _SavedJobPageState();
}

class _SavedJobPageState extends State<SavedJobPage> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Text(
                AppLocalizations.of(context)!.recently_saved_jobs,
                style: theme.textTheme.headline4,
              ),
            ),
            const SizedBox(height: Const.space25),
            BlocBuilder<SavedJobWatcherBloc, SavedJobWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return const SizedBox();
                  },
                  loaded: (state) {
                    return _buildSavedJobList(context, jobs: state.jobs);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSavedJobList(
    BuildContext context, {
    required List<Job> jobs,
  }) {
    final theme = Theme.of(context);
    return Expanded(
      child: ListView.builder(
        itemCount: jobs.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        itemBuilder: (context, index) {
          final job = jobs[index];
          return Card(
            elevation: 0,
            margin: const EdgeInsets.only(bottom: Const.space15),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(Const.radius),
            ),
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              leading: OctoImage(
                width: 80,
                height: 80,
                image: CachedNetworkImageProvider(
                  job.companyImage,
                ),
                fit: BoxFit.contain,
              ),
              title: Text(
                job.position,
                style: theme.textTheme.headline3?.copyWith(
                  height: 1.3,
                ),
                maxLines: 2,
              ),
              subtitle: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: job.location,
                      style: theme.textTheme.subtitle1,
                    ),
                    TextSpan(
                      text: '\n1 week ago',
                      style: theme.textTheme.bodyText2,
                    ),
                  ],
                ),
              ),
              trailing: IconButton(
                onPressed: () {
                  showToast(
                    msg: AppLocalizations.of(context)!.removed_from_saved_jobs,
                  );
                },
                icon: const Icon(IconlyBold.bookmark),
                color: theme.primaryColor,
              ),
            ),
          );
        },
      ),
    );
  }

  Padding _buildAppBar(BuildContext context) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space25,
      ),
      child: SizedBox(
        height: 45,
        width: Screens.width(context),
        child: Row(
          children: [
            Text(
              AppLocalizations.of(context)!.saved_jobs,
              style: theme.textTheme.headline3,
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                  context
                      .read<JobSearchFormBloc>()
                      .add(const JobSearchFormEvent.fetchJobs());
                  Navigator.pushNamed(context, SEARCH_JOB);
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: (themeCubit is ThemeDark)
                      ? ColorDark.card
                      : ColorLight.whiteSmoke,
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                child: const Icon(IconlyLight.search),
              ),
            ),
            const SizedBox(width: Const.space15),
            InkWell(
              onTap: () {
                showToast(msg: AppLocalizations.of(context)!.more_button_clicked);
              },
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: (themeCubit is ThemeDark)
                      ? ColorDark.card
                      : ColorLight.whiteSmoke,
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                child: const Icon(FeatherIcons.moreVertical),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
