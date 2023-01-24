import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;

    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            _buildAppBar(context),
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.symmetric(horizontal: Const.margin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      lang.account_settings,
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: Const.space15),
                    _buildListTile(
                      context,
                      title: lang.language,
                      onTap: () {
                        Navigator.pushNamed(context, LANGUAGE);
                      },
                    ),
                    _buildListTile(
                      context,
                      isSwitch: true,
                      title: lang.theme_mode,
                      onTap: () {
                        context.read<ThemeCubit>().changeTheme();
                      },
                    ),
                    const SizedBox(height: Const.space25),
                    Text(
                      lang.support,
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: Const.space15),
                    _buildListTile(
                      context,
                      title: lang.get_help,
                      onTap: () {
                        showToast(msg: lang.get_help_clicked);
                      },
                    ),
                    _buildListTile(
                      context,
                      title: lang.give_a_feedback,
                      onTap: () {
                        showToast(msg: lang.give_a_feedback_clicked);
                      },
                    ),
                    const SizedBox(height: Const.space25),
                    Text(
                      lang.legal,
                      style: theme.textTheme.headline4,
                    ),
                    const SizedBox(height: Const.space15),
                    _buildListTile(
                      context,
                      title: lang.terms_of_service,
                      onTap: () {
                        showToast(msg: lang.terms_of_service);
                      },
                    ),
                    _buildListTile(
                      context,
                      title: lang.privacy_policy,
                      onTap: () {
                        showToast(msg: lang.privacy_policy);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required String title,
    required VoidCallback onTap,
    bool isSwitch = false,
  }) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Row(
            children: [
              Text(
                title,
                style: theme.textTheme.bodyText2,
              ),
              const Spacer(),
              if (isSwitch == true)
                BlocBuilder<ThemeCubit, ThemeState>(
                  builder: (context, state) {
                    return Switch(
                      value: (state is ThemeDark) ? true : false,
                      onChanged: (v) {
                        context.read<ThemeCubit>().changeTheme();
                      },
                    );
                  },
                )
              else
                Row(
                  children: [
                    Icon(
                      FeatherIcons.chevronRight,
                      color: theme.disabledColor,
                    )
                  ],
                ),
            ],
          ),
          if (isSwitch == true)
            const SizedBox()
          else
            const SizedBox(height: Const.space8),
          const Divider(),
        ],
      ),
    );
  }

  Padding _buildAppBar(BuildContext context) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
    final lang = AppLocalizations.of(context)!;

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
              lang.settings,
              style: theme.textTheme.headline3,
            ),
          ],
        ),
      ),
    );
  }
}
