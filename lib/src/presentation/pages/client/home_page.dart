import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/presentation/bloc/client/client_watcher/client_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_search_form/job_search_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/popular_job_watcher/popular_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/recently_added_job_watcher/recently_added_job_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/job_horizontal_card.dart';
import 'package:joblance_firebase/src/presentation/widgets/job_vertical_card.dart';
import 'package:joblance_firebase/src/presentation/widgets/shimmer.dart';
import 'package:octo_image/octo_image.dart';
import 'package:shimmer/shimmer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context
            .read<PopularJobWatcherBloc>()
            .add(const PopularJobWatcherEvent.fetchPopularJobs());
        context
            .read<RecentlyAddedJobWatcherBloc>()
            .add(const RecentlyAddedJobWatcherEvent.fetchRecentlyJobs());
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _buildAppBar(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildGreetings(context),
                      const SizedBox(height: Const.space25),
                      _buildSearchBox(context),
                      const SizedBox(height: Const.space25),
                      BlocBuilder<PopularJobWatcherBloc,
                          PopularJobWatcherState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            orElse: () {
                              return _buildPopularJobShimmer(context);
                            },
                            loaded: (state) {
                              return _buildPopularJobList(
                                context,
                                jobs: state.jobs,
                                label:
                                    AppLocalizations.of(context)!.popular_jobs,
                              );
                            },
                          );
                        },
                      ),
                      const SizedBox(height: Const.space25),
                      BlocBuilder<RecentlyAddedJobWatcherBloc,
                          RecentlyAddedJobWatcherState>(
                        builder: (context, state) {
                          return state.maybeMap(
                            orElse: () => _buildRecentlyAddedShimmer(context),
                            loaded: (state) {
                              return _buildRecentlyAddedList(
                                context,
                                label: AppLocalizations.of(context)!
                                    .recently_added,
                                jobs: state.jobs,
                              );
                            },
                          );
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPopularJobShimmer(BuildContext context) {
    final theme = Theme.of(context);
    return Shimmer.fromColors(
      baseColor: theme.disabledColor.withOpacity(.3),
      highlightColor: theme.disabledColor.withOpacity(.1),
      child: SizedBox(
        width: Screens.width(context),
        height: 150,
        child: ListView.builder(
          itemCount: 5,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(right: Const.space15),
              width: 250,
              height: 150,
              child: Row(
                children: [
                  SizedBox(
                    width: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildShimmerContainer(
                          width: 80,
                          height: 80,
                        ),
                        const SizedBox(height: Const.space12),
                        buildShimmerContainer(
                          width: 80,
                          height: 20,
                        ),
                        const SizedBox(height: Const.space15),
                      ],
                    ),
                  ),
                  const SizedBox(width: Const.space15),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        buildShimmerContainer(
                          height: 20,
                        ),
                        buildShimmerContainer(
                          width: 120,
                          height: 20,
                        ),
                        buildShimmerContainer(
                          width: 80,
                          height: 20,
                        ),
                        const SizedBox(height: Const.space12),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget _buildRecentlyAddedShimmer(BuildContext context) {
    final theme = Theme.of(context);
    return Shimmer.fromColors(
      baseColor: theme.disabledColor.withOpacity(.3),
      highlightColor: theme.disabledColor.withOpacity(.1),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: Const.margin,
          vertical: Const.space15,
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                buildShimmerContainer(
                  width: 100,
                  height: 20,
                ),
                buildShimmerContainer(
                  width: 50,
                  height: 20,
                ),
              ],
            ),
            const SizedBox(height: Const.space15),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  leading: buildShimmerContainer(
                    width: 80,
                    height: 80,
                  ),
                  title: buildShimmerContainer(
                    width: 100,
                    height: 15,
                  ),
                  subtitle: buildShimmerContainer(
                    width: 100,
                    height: 15,
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildRecentlyAddedList(
    BuildContext context, {
    required List<Job> jobs,
    required String label,
  }) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
            vertical: Const.space15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: theme.textTheme.headline3,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(
                  context,
                  BROWSE_JOB,
                ),
                child: Text(
                  AppLocalizations.of(context)!.show_all,
                  style: theme.textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
        ListView.builder(
          itemCount: jobs.length,
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          itemBuilder: (context, index) {
            final job = jobs[index];
            return JobVerticalCard(job: job);
          },
        ),
      ],
    );
  }

  Widget _buildPopularJobList(
    BuildContext context, {
    required String label,
    required List<Job> jobs,
  }) {
    final theme = Theme.of(context);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: Const.margin,
            vertical: Const.space15,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: theme.textTheme.headline3,
              ),
              InkWell(
                onTap: () => Navigator.pushNamed(
                  context,
                  BROWSE_JOB,
                ),
                child: Text(
                  AppLocalizations.of(context)!.show_all,
                  style: theme.textTheme.subtitle1,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: Screens.width(context),
          height: 150,
          child: ListView.builder(
            itemCount: jobs.length,
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            itemBuilder: (context, index) {
              final job = jobs[index];
              return JobHorizontalCard(job: job);
            },
          ),
        ),
      ],
    );
  }

  Padding _buildSearchBox(BuildContext context) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: SizedBox(
        width: Screens.width(context),
        height: 45,
        child: Row(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  context
                      .read<JobSearchFormBloc>()
                      .add(const JobSearchFormEvent.fetchJobs());
                  Navigator.pushNamed(context, SEARCH_JOB);
                },
                child: Container(
                  height: 45,
                  decoration: BoxDecoration(
                    color: themeCubit is ThemeDark
                        ? ColorDark.card
                        : ColorLight.whiteSmoke,
                    borderRadius: BorderRadius.circular(Const.radius),
                  ),
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.symmetric(horizontal: Const.margin),
                  child: Text(
                    AppLocalizations.of(context)!.search_job,
                    style: theme.textTheme.subtitle1,
                  ),
                ),
              ),
            ),
            const SizedBox(width: Const.space25),
            InkWell(
              borderRadius: BorderRadius.circular(Const.radius),
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
                  color: theme.primaryColor,
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                child: const Icon(
                  IconlyLight.search,
                  color: Colors.white,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Padding _buildGreetings(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Const.margin),
      child: BlocBuilder<ClientWatcherBloc, ClientWatcherState>(
        builder: (context, state) {
          return state.maybeMap(
            orElse: () => const SizedBox(),
            loaded: (state) {
              return RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text:
                          '${AppLocalizations.of(context)!.hi}, ${state.client.name}\n',
                      style: theme.textTheme.subtitle1,
                    ),
                    TextSpan(
                      text: AppLocalizations.of(context)!.find_your_perfect_job,
                      style: theme.textTheme.headline2,
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }

  Padding _buildAppBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: Const.margin,
        vertical: Const.space25,
      ),
      child: SizedBox(
        height: 50,
        width: Screens.width(context),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              AppLocalizations.of(context)!.joblance,
              style: GoogleFonts.prompt(
                color: Theme.of(context).primaryColor,
                fontSize: 25,
                fontWeight: FontWeight.w600,
                letterSpacing: .5,
              ),
            ),
            BlocBuilder<ClientWatcherBloc, ClientWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () => const SizedBox(),
                  loaded: (state) {
                    return InkWell(
                      onTap: () => Navigator.pushNamed(context, PROFILE_DETAIL),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(Const.radius),
                        child: OctoImage(
                          image:  CachedNetworkImageProvider(
                            state.client.image,
                          ),
                          width: 50,
                          height: 50,
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
