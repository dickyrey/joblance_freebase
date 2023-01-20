import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/active_job_watcher/active_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_dialog.dart';
import 'package:timeago/timeago.dart' as timeago;

class ActiveJobRecruiterPage extends StatefulWidget {
  const ActiveJobRecruiterPage({Key? key}) : super(key: key);

  @override
  State<ActiveJobRecruiterPage> createState() => _ActiveJobRecruiterPageState();
}

class _ActiveJobRecruiterPageState extends State<ActiveJobRecruiterPage> {
  @override
  void initState() {
    super.initState();
    // context.read<JobWatcherBloc>().add(const JobWatcherEvent.fetchActiveJob());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            children: [
              const SizedBox(height: Const.space12),
              _buildAppBar(context),
              const SizedBox(height: Const.space12),
              BlocBuilder<ActiveJobWatcherBloc, ActiveJobWatcherState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () => const SizedBox(),
                    loaded: (state) {
                      return _buildActiveJobList(context, jobs: state.jobs);
                    },
                  );
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

Expanded _buildActiveJobList(
  BuildContext context, {
  required List<Job> jobs,
}) {
  final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
  return Expanded(
    child: ListView.builder(
      itemCount: jobs.length,
      itemBuilder: (context, index) {
        final job = jobs[index];
        return Card(
          margin: const EdgeInsets.only(bottom: Const.space15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          elevation: 0,
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: Const.space12,
              vertical: Const.space8,
            ),
            leading: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.radius),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: CachedNetworkImageProvider(job.companyImage),
                ),
              ),
            ),
            title: Text(
              job.position,
              style: theme.textTheme.headline3,
              maxLines: 1,
            ),
            subtitle: RichText(
              maxLines: 3,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${job.location}\n',
                    style: theme.textTheme.subtitle1,
                  ),
                  TextSpan(
                    text: timeago.format(job.createdAt),
                    style: theme.textTheme.bodyText2,
                  ),
                ],
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                showBottomDialog(
                  context,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SizedBox(height: Const.space25),
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: SizedBox(
                          height: 45,
                          child: Text(
                            AppLocalizations.of(context)!.edit,
                            style: theme.textTheme.bodyText1,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                        },
                        child: SizedBox(
                          height: 45,
                          child: Text(
                            AppLocalizations.of(context)!.delete,
                            style: theme.textTheme.bodyText1?.copyWith(
                              color: theme.errorColor,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: Const.space15),
                    ],
                  ),
                );
              },
              icon:  Icon(
                FeatherIcons.moreVertical,
                color:  (themeCubit is ThemeDark)
                      ? ColorDark.disabledButton
                      : ColorLight.disabledButton,
              ),
            ),
          ),
        );
      },
    ),
  );
}

SizedBox _buildAppBar(BuildContext context) {
  final theme = Theme.of(context);
  return SizedBox(
    width: Screens.width(context),
    height: 45,
    child: Row(
      children: [
        Text(
          AppLocalizations.of(context)!.active_jobs,
          style: theme.textTheme.headline2,
        ),
        // const Spacer(),
        // InkWell(
        //   borderRadius: BorderRadius.circular(Const.radius),
        //   onTap: () => Navigator.pop(context),
        //   child: Container(
        //     width: 45,
        //     height: 45,
        //     decoration: BoxDecoration(
        //       color: ColorLight.whiteSmoke,
        //       borderRadius: BorderRadius.circular(Const.radius),
        //     ),
        //     child: const Icon(
        //       IconlyLight.arrowLeft,
        //       color: ColorLight.fontTitle,
        //     ),
        //   ),
        // ),
      ],
    ),
  );
}
