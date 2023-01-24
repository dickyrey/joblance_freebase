import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_search_form/job_search_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_app_bar.dart';
import 'package:joblance_firebase/src/presentation/widgets/shimmer.dart';
import 'package:octo_image/octo_image.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;

class SearchJobPage extends StatelessWidget {
  const SearchJobPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(
        context,
        title: AppLocalizations.of(context)!.search_job,
        actions: [
          // IconButton(
          //   onPressed: () {
          //     showToast(msg: 'This page under development :) ');
          //   },
          //   color: theme.primaryColor,
          //   icon: const Icon(FeatherIcons.filter),
          // )
        ],
      ),
      body: BlocBuilder<JobSearchFormBloc, JobSearchFormState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBox(context),
              const SizedBox(height: Const.space15),
              Expanded(
                child: (state.state == RequestState.loading)
                    ? _buildListShimmer(context)
                    : _buildList(context, state.searchResult),
              ),
            ],
          );
        },
      ),
    );
  }

  Padding _buildSearchBox(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppLocalizations.of(context)!.search_for_your_next_job,
            style: theme.textTheme.headline3,
          ),
          const SizedBox(height: Const.space12),
          Row(
            children: [
              Expanded(
                child: Container(
                  height: 45,
                  padding: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Const.radius),
                    color: theme.disabledColor.withOpacity(.3),
                  ),
                  child: TextField(
                    style: theme.textTheme.bodyText2,
                    decoration: InputDecoration(
                      hintText: AppLocalizations.of(context)!.search_job,
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                    ),
                    onChanged: (v) {
                      context
                          .read<JobSearchFormBloc>()
                          .add(JobSearchFormEvent.searchChanged(v));
                    },
                  ),
                ),
              ),
              const SizedBox(width: Const.space15),
              Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Const.radius),
                  color: theme.primaryColor,
                ),
                child: const Icon(
                  FeatherIcons.search,
                  color: Colors.white,
                  size: 20,
                ),
              ),
            ],
          ),
        ],
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

  Widget _buildList(BuildContext context, List<Job> jobList) {
    final theme = Theme.of(context);
    return jobList.isEmpty
        ? Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: ListView(

                children: [
                  SvgPicture.asset(Illustrations.search),
                  const SizedBox(height: Const.space25),
                  Text(
                    AppLocalizations.of(context)!.sorry_no_result_found,
                    style: theme.textTheme.headline2,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: Const.space12),
                  Text(
                    AppLocalizations.of(context)!.the_job_you_are_looking_for_is_not_found_find_another_job_that_suits_you,
                    style: theme.textTheme.subtitle1,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
          ),
        )
        : ListView.builder(
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
                  contentPadding:
                      const EdgeInsets.symmetric(horizontal: Const.space12),
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
                      image: CachedNetworkImageProvider(job.companyImage),
                      fit: BoxFit.cover,
                    ),
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
