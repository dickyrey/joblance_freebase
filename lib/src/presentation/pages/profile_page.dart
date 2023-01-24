import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/profile/profile_watcher/profile_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_app_bar.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_dialog.dart';
import 'package:joblance_firebase/src/presentation/widgets/shimmer.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';
import 'package:shimmer/shimmer.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final lang = AppLocalizations.of(context)!;

    return BlocListener<AuthWatcherBloc, AuthWatcherState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () => Navigator.pushNamedAndRemoveUntil(
            context,
            SIGN_IN,
            (route) => false,
          ),
          authenticated: (_) {},
          authenticating: (_) {},
        );
      },
      child: Scaffold(
        appBar: CustomAppBar(
          context,
          enableLeading: false,
        ),
        body: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          child: Column(
            children: [
              _buildProfileTile(context),
              const SizedBox(height: Const.space25 * 2),
              _buildListTile(
                context,
                icon: IconlyLight.work,
                title: lang.become_a_recruiter,
                subtitle: lang.you_can_recruit_freelancers_in_this_app,
                onTap: () => Navigator.pushNamed(context, REGISTER_RECRUITER),
              ),
              _buildListTile(
                context,
                icon: IconlyLight.setting,
                title: lang.settings,
                subtitle: lang.theme_language_notifications,
                onTap: () => Navigator.pushNamed(context, SETTING),
              ),
              const SizedBox(height: Const.space8),
              _buildListTile(
                context,
                icon: IconlyLight.chat,
                title: lang.help,
                subtitle: lang.contact_us,
                onTap: () {},
              ),
              const SizedBox(height: Const.space8),
              _buildListTile(
                context,
                icon: IconlyLight.infoSquare,
                title: lang.about,
                subtitle: lang.about_this_application,
                onTap: () {},
              ),
              const SizedBox(height: Const.space8),
              _buildListTile(
                context,
                icon: IconlyLight.buy,
                title: lang.purchase_this_app,
                subtitle: lang.buy_this_app_with_adorable_price,
                onTap: () async {
                  if (!await launchUrl(
                    Uri(
                      scheme: 'https',
                      host: 'www.codecanyon.net',
                      path: '/user/byneetdev/portfolio',
                    ),
                    mode: LaunchMode.externalApplication,
                  )) {
                    await showToast(msg: lang.error_to_open_browser);
                  }
                },
              ),
              const SizedBox(height: Const.space8),
              _buildListTile(
                context,
                icon: IconlyLight.logout,
                title: lang.log_out,
                subtitle: lang.exit_from_your_account,
                onTap: () {
                  showConfirmationDialog(
                    context,
                    title: lang.are_you_sure_want_to_sign_out,
                    primaryButtonLabel: lang.sign_out,
                    onPrimaryButtonTap: () {
                      Navigator.pop(context);
                      context
                          .read<AuthWatcherBloc>()
                          .add(const AuthWatcherEvent.signedOut());
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileTile(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return BlocBuilder<ProfileWatcherBloc, ProfileWatcherState>(
      builder: (context, state) {
        return state.maybeMap(
          orElse: () {
            return Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                leading: const CircleAvatar(
                  radius: 30,
                ),
                title: buildShimmerContainer(
                  width: 100,
                  height: 20,
                ),
                subtitle: buildShimmerContainer(
                  width: 80,
                  height: 12,
                ),
              ),
            );
          },
          loadSuccess: (state) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 30,
                backgroundImage:
                    CachedNetworkImageProvider(state.profile.image),
                backgroundColor: theme.disabledColor,
              ),
              title: Text(
                state.profile.fullName,
                style: theme.textTheme.headline2,
              ),
              subtitle: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, PROFILE_DETAIL);
                },
                child: Text(
                  lang.view_profile,
                  style: theme.textTheme.subtitle1?.copyWith(
                    color: theme.primaryColor,
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Column _buildListTile(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
  }) {
    final theme = Theme.of(context);
    return Column(
      children: [
        InkWell(
          onTap: onTap,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon),
              const SizedBox(width: Const.space15),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: theme.textTheme.headline3),
                    const SizedBox(height: Const.space8 - 3),
                    Text(
                      subtitle,
                      style: theme.textTheme.subtitle2,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Divider(color: theme.disabledColor),
      ],
    );
  }
}
