import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/job_detail.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_details_watcher/job_details_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_dialog.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/shimmer.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';
import 'package:octo_image/octo_image.dart';
import 'package:readmore/readmore.dart';
import 'package:shimmer/shimmer.dart';

class JobDetailsPage extends StatefulWidget {
  const JobDetailsPage({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<JobDetailsPage> createState() => _JobDetailsPageState();
}

class _JobDetailsPageState extends State<JobDetailsPage> {
  bool _isBookmarked = false;
  bool _isApplied = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    context
        .read<JobDetailsWatcherBloc>()
        .add(JobDetailsWatcherEvent.fetchJobDetails(widget.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(context),
            BlocBuilder<JobDetailsWatcherBloc, JobDetailsWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return _buildShimmer(context);
                  },
                  loaded: (state) {
                    return _buildJobDetails(context, job: state.job);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Shimmer _buildShimmer(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Theme.of(context).disabledColor.withOpacity(.3),
      highlightColor: Theme.of(context).disabledColor.withOpacity(.1),
      child: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildShimmerContainer(
                    width: 100,
                    height: 100,
                  ),
                  const SizedBox(height: Const.space15),
                  buildShimmerContainer(
                    width: 200,
                    height: 15,
                  ),
                  const SizedBox(height: Const.space12),
                  buildShimmerContainer(
                    width: 100,
                    height: 10,
                  ),
                ],
              ),
            ),
            const SizedBox(height: Const.space25),
            buildShimmerContainer(height: 25),
            const SizedBox(height: Const.space15),
            Row(
              children: [
                buildShimmerContainer(width: 25, height: 15),
                const SizedBox(width: Const.space15),
                buildShimmerContainer(width: 80, height: 15),
              ],
            ),
            const SizedBox(height: Const.space8),
            Row(
              children: [
                buildShimmerContainer(width: 25, height: 15),
                const SizedBox(width: Const.space15),
                buildShimmerContainer(width: 80, height: 15),
              ],
            ),
            const SizedBox(height: Const.space8),
            Row(
              children: [
                buildShimmerContainer(width: 25, height: 15),
                const SizedBox(width: Const.space15),
                buildShimmerContainer(width: 80, height: 15),
              ],
            ),
            const SizedBox(height: Const.space25),
            buildShimmerContainer(width: 250, height: 15),
            const SizedBox(height: Const.space8),
            buildShimmerContainer(width: 220, height: 15),
            const SizedBox(height: Const.space8),
            buildShimmerContainer(width: 200, height: 15),
            const SizedBox(height: Const.space8),
            buildShimmerContainer(width: 180, height: 15),
          ],
        ),
      ),
    );
  }

  Expanded _buildJobDetails(
    BuildContext context, {
    required JobDetail job,
  }) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            _buildCompanyCard(context, job: job),
            const SizedBox(height: Const.space15),
            _buildJobDetailCard(context, job: job),
            CustomElevatedButton(
              onTap: () {
                (_isApplied == true)
                    ? showConfirmationDialog(
                        context,
                        title: AppLocalizations.of(context)!
                            .are_you_sure_you_want_to_cancel_the_application,
                        primaryButtonLabel: AppLocalizations.of(context)!.cancel,
                        onPrimaryButtonTap: () {
                          setState(() {
                            _isLoading = true;
                          });
                          Navigator.pop(context);
                          Future.delayed(const Duration(seconds: 2), () {
                            setState(() {
                              _isApplied = false;
                              _isLoading = false;
                            });
                            showToast(
                              msg: AppLocalizations.of(context)!
                                  .job_cancelled,
                            );
                          });
                        },
                      )
                    : showConfirmationDialog(
                        context,
                        title: AppLocalizations.of(context)!
                            .are_you_sure_want_to_apply_this_job,
                        primaryButtonLabel: AppLocalizations.of(context)!.apply,
                        onPrimaryButtonTap: () {
                          setState(() {
                            _isLoading = true;
                          });
                          Navigator.pop(context);
                          Future.delayed(const Duration(seconds: 2), () {
                            setState(() {
                              _isApplied = true;
                              _isLoading = false;
                            });
                            showToast(
                              msg: AppLocalizations.of(context)!
                                  .apply_successfully,
                            );
                          });
                        },
                      );
              },
              isLoading: (_isLoading == true) ? true : false,
              margin: const EdgeInsets.all(Const.space25),
              color: (_isApplied == true)
                  ? Theme.of(context).errorColor
                  : Theme.of(context).primaryColor,
              label: (_isApplied == true)
                  ? AppLocalizations.of(context)!.cancel_my__application
                  : AppLocalizations.of(context)!.apply_now,
            ),
          ],
        ),
      ),
    );
  }

  Card _buildJobDetailCard(
    BuildContext context, {
    required JobDetail job,
  }) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      child: Padding(
        padding: const EdgeInsets.all(Const.space12),
        child: SizedBox(
          width: Screens.width(context),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppLocalizations.of(context)!.job_description,
                style: theme.textTheme.headline3,
              ),
              const SizedBox(height: Const.space25),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    IconlyLight.work,
                    size: 23,
                    color: (themeCubit is ThemeDark)
                        ? ColorDark.fontSubtitle
                        : ColorLight.fontSubtitle,
                  ),
                  const SizedBox(width: Const.space12),
                  Text(
                    '${job.experienceLevel} | ${job.jobType}',
                    style: theme.textTheme.bodyText2,
                  ),
                ],
              ),
              const SizedBox(height: Const.space12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    IconlyLight.wallet,
                    size: 23,
                    color: (themeCubit is ThemeDark)
                        ? ColorDark.fontSubtitle
                        : ColorLight.fontSubtitle,
                  ),
                  const SizedBox(width: Const.space12),
                  Text(
                    '${AppLocalizations.of(context)!.salary} ${NumberFormat.currency(
                          decimalDigits: 0,
                          symbol: r'$',
                        ).format(job.salary)}',
                    style: theme.textTheme.bodyText2,
                  ),
                ],
              ),
              const SizedBox(height: Const.space12),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Icon(
                    IconlyLight.location,
                    size: 23,
                    color: (themeCubit is ThemeDark)
                        ? ColorDark.fontSubtitle
                        : ColorLight.fontSubtitle,
                  ),
                  const SizedBox(width: Const.space12),
                  Expanded(
                    child: Text(
                      job.location,
                      style: theme.textTheme.bodyText2,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: Const.space15),
              ReadMoreText(
                job.description,
                style: theme.textTheme.subtitle1,
                trimLines: 5,
                colorClickableText: Colors.pink,
                trimMode: TrimMode.Line,
                trimCollapsedText:
                    '...${AppLocalizations.of(context)!.show_more}',
                trimExpandedText: ' ${AppLocalizations.of(context)!.show_less}',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container _buildCompanyCard(
    BuildContext context, {
    required JobDetail job,
  }) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
    return Container(
      decoration: BoxDecoration(
        color: (themeCubit is ThemeDark)
            ? ColorDark.card
            : ColorLight.catSkillWhite,
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      margin: const EdgeInsets.symmetric(horizontal: Const.margin),
      padding: const EdgeInsets.all(Const.space12),
      child: AspectRatio(
        aspectRatio: 16 / 9,
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(Const.radius),
                child: OctoImage(
                  fit: BoxFit.contain,
                  image: CachedNetworkImageProvider(job.companyImage),
                ),
              ),
            ),
            const SizedBox(height: Const.space15),
            Text(job.position, style: theme.textTheme.headline2),
            const SizedBox(height: Const.space12),
            Text(
              job.companyName,
              style: theme.textTheme.bodyText2,
              maxLines: 1,
            ),
          ],
        ),
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
        height: 50,
        width: Screens.width(context),
        child: Row(
          children: [
            InkWell(
              onTap: () => Navigator.pop(context),
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: (themeCubit is ThemeDark)
                      ? ColorDark.card
                      : ColorLight.whiteSmoke,
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                child: const Icon(FeatherIcons.chevronLeft),
              ),
            ),
            const SizedBox(width: Const.space15),
            Text(
              AppLocalizations.of(context)!.job_details,
              style: theme.textTheme.headline3,
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                setState(() {
                  _isBookmarked = !_isBookmarked;
                });
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
                child: Icon(
                  (_isBookmarked == true)
                      ? IconlyBold.bookmark
                      : IconlyLight.bookmark,
                  color: theme.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
