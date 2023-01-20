import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/applicant.dart';
import 'package:joblance_firebase/src/presentation/bloc/applicant/applicant_watcher/applicant_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';

class ApplicantRecruiterPage extends StatelessWidget {
  const ApplicantRecruiterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(context),
            const SizedBox(height: Const.space15),
            BlocBuilder<ApplicantWatcherBloc, ApplicantWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return Container();
                  },
                  loaded: (state) {
                    return _buildApplicantList(
                      context,
                      applicants: state.applicants,
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }

  Widget _buildApplicantList(
    BuildContext context, {
    required List<Applicant> applicants,
  }) {
    final theme = Theme.of(context);
    return ListView.builder(
      itemCount: applicants.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        final applicant = applicants[index];
        return ListTile(
          onTap: () {},
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: CachedNetworkImageProvider(applicant.image),
          ),
          title: Text(
            applicant.name,
            style: theme.textTheme.headline3,
          ),
          subtitle: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${AppLocalizations.of(context)!.applies_for} ',
                  style: theme.textTheme.subtitle1,
                ),
                TextSpan(
                  text: applicant.position,
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
          ),
          trailing: Text(
            DateFormat('HH:mm').format(applicant.createdAt),
            style: theme.textTheme.subtitle2,
          ),
        );
      },
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
              AppLocalizations.of(context)!.applications,
              style: theme.textTheme.headline3,
            ),
            const Spacer(),
            InkWell(
              onTap: () {
                showToast(
                  msg: AppLocalizations.of(context)!.more_button_clicked,
                );
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
