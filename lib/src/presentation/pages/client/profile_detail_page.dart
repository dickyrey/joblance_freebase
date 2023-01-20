import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/auth_watcher/auth_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/client/client_form/client_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/bloc/client/client_watcher/client_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:octo_image/octo_image.dart';

class ProfileDetailPage extends StatelessWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthWatcherBloc, AuthWatcherState>(
      listener: (context, state) {
        state.maybeMap(
          orElse: () {
            Navigator.pushNamedAndRemoveUntil(
              context,
              SIGN_IN,
              (Route<dynamic> route) => false,
            );
          },
          authenticated: (_) {},
        );
      },
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              _buildAppBar(context),
              BlocBuilder<ClientWatcherBloc, ClientWatcherState>(
                builder: (context, state) {
                  return state.maybeMap(
                    orElse: () {
                      return Container();
                    },
                    loaded: (state) {
                      return _buildBody(context, client: state.client);
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

  Expanded _buildBody(
    BuildContext context, {
    required Client client,
  }) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: Const.margin),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(Const.space12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 110,
                              height: 110,
                              child: Stack(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(Const.radius),
                                    child: OctoImage(
                                      width: 100,
                                      height: 100,
                                      image: CachedNetworkImageProvider(
                                        client.image,
                                      ),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  const Positioned(
                                    right: 0,
                                    bottom: 0,
                                    child: CircleAvatar(
                                      radius: 10,
                                      backgroundColor: Colors.white,
                                      child: CircleAvatar(
                                        radius: 8,
                                        backgroundColor: Colors.green,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                context
                                    .read<ClientFormBloc>()
                                    .add(ClientFormEvent.init(client));
                                Navigator.pushNamed(
                                  context,
                                  PROFILE_FORM,
                                  arguments: client,
                                );
                              },
                              child: Container(
                                width: 45,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: (themeCubit is ThemeDark)
                                      ? ColorDark.background
                                      : ColorLight.whiteSmoke,
                                  borderRadius: BorderRadius.circular(Const.radius),
                                ),
                                child: const Icon(FeatherIcons.edit),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: Const.space15),
                        Text(
                          client.name,
                          style: theme.textTheme.headline3,
                        ),
                        const SizedBox(height: Const.space8),
                        Text(
                          client.position,
                          style: theme.textTheme.subtitle1,
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2,
                    color: theme.backgroundColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(Const.space12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppLocalizations.of(context)!.main_info,
                          style: theme.textTheme.headline3,
                        ),
                        _buildListTile(
                          context,
                          icon: IconlyLight.location,
                          label: client.address,
                        ),
                        _buildListTile(
                          context,
                          icon: IconlyLight.calendar,
                          label: DateFormat.yMMMEd().format(client.birthdate),
                        ),
                        const SizedBox(height: Const.space25),
                        Text(
                          AppLocalizations.of(context)!.contact_info,
                          style: theme.textTheme.headline3,
                        ),
                        _buildListTile(
                          context,
                          icon: IconlyLight.message,
                          label: client.email,
                        ),
                        _buildListTile(
                          context,
                          icon: IconlyLight.calling,
                          label: client.phone,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: Const.space8),
            Card(
              elevation: 0,
              margin: const EdgeInsets.symmetric(horizontal: Const.margin),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: Padding(
                padding: const EdgeInsets.all(Const.space12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppLocalizations.of(context)!.about,
                      style: theme.textTheme.headline3,
                    ),
                    const SizedBox(height: Const.space12),
                    Text(
                      client.about,
                      style: theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: Const.space25),
          ],
        ),
      ),
    );
  }

  Widget _buildListTile(
    BuildContext context, {
    required IconData icon,
    required String label,
  }) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
    return Padding(
      padding: const EdgeInsets.only(top: Const.space12),
      child: Row(
        children: [
          Icon(
            icon,
            color: (themeCubit is ThemeDark)
                ? ColorDark.fontSubtitle
                : ColorLight.fontTitle,
          ),
          const SizedBox(width: Const.space15),
          Text(
            label,
            style: theme.textTheme.bodyText2,
          ),
        ],
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
              AppLocalizations.of(context)!.my_profile,
              style: theme.textTheme.headline3,
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
