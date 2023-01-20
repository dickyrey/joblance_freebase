import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/browse_job_watcher/browse_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_search_form/job_search_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_app_bar.dart';
import 'package:joblance_firebase/src/presentation/widgets/shimmer.dart';
import 'package:octo_image/octo_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;

class BrowseJobPage extends StatefulWidget {
  const BrowseJobPage({Key? key}) : super(key: key);

  @override
  State<BrowseJobPage> createState() => _BrowseJobPageState();
}

class _BrowseJobPageState extends State<BrowseJobPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<BrowseJobWatcherBloc>()
          .add(const BrowseJobWatcherEvent.fetchJobs()),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.browse_job,
        actions: [
          IconButton(
            icon: const Icon(FeatherIcons.search),
            color: theme.primaryColor,
            onPressed: () {
              context
                  .read<JobSearchFormBloc>()
                  .add(const JobSearchFormEvent.fetchJobs());
              Navigator.pushNamed(context, SEARCH_JOB);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: BlocBuilder<BrowseJobWatcherBloc, BrowseJobWatcherState>(
          builder: (context, state) {
            return state.maybeMap(
              orElse: () {
                return _buildListShimmer(context);
              },
              loaded: (state) {
                return _buildList(
                  context,
                  state.jobs,
                );
              },
            );
          },
        ),
      ),
    );
  }

  ListView _buildListShimmer(BuildContext context) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: 6,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space12,
      ),
      itemBuilder: (context, index) {
        return Shimmer.fromColors(
          baseColor: theme.disabledColor.withOpacity(.3),
          highlightColor: theme.disabledColor.withOpacity(.1),
          child: ListTile(
            contentPadding: const EdgeInsets.all(Const.margin),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(Const.radius),
              child: buildShimmerContainer(width: 80, height: 80),
            ),
            title: buildShimmerContainer(),
            subtitle: buildShimmerContainer(),
          ),
        );
      },
    );
  }

  ListView _buildList(BuildContext context, List<Job> jobList) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: jobList.length,
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space12,
      ),
      itemBuilder: (context, index) {
        final job = jobList[index];
        return Card(
          elevation: 0,
          margin: const EdgeInsets.only(bottom: Const.space15),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(Const.radius),
          ),
          child: ListTile(
            contentPadding: const EdgeInsets.symmetric(horizontal: Const.space12),
            onTap: () => Navigator.pushNamed(
              context,
              JOB_DETAILS,
              arguments: job.id,
            ),
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(Const.radius),
              child: OctoImage(
                width: 80,
                height: 80,
                image: CachedNetworkImageProvider(
                  job.companyImage,
                ),
                fit: BoxFit.cover,
              ),
            ),
            title: Text(
              job.companyName,
              style: theme.textTheme.headline3?.copyWith(
                height: 1.3,
              ),
              maxLines: 2,
            ),
            subtitle: RichText(
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
          ),
        );
      },
    );
  }
}
