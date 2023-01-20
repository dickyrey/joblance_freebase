import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/notification.dart';
import 'package:joblance_firebase/src/presentation/bloc/notifications/notifications_watcher/notifications_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/shimmer.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';
import 'package:shimmer/shimmer.dart';
import 'package:timeago/timeago.dart' as timeago;

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<NotificationsWatcherBloc>()
          .add(const NotificationsWatcherEvent.fetchNotifications()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(context),
            BlocBuilder<NotificationsWatcherBloc, NotificationsWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: () {
                    return _buildListShimmer();
                  },
                  loaded: (state) {
                    return _buildNotificationList(
                      context,
                      notifications: state.notifications,
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

  Expanded _buildListShimmer() {
    return Expanded(
      child: ListView.separated(
        itemCount: 5,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return const Divider(thickness: 2);
        },
        itemBuilder: (context, index) {
          return Shimmer.fromColors(
      baseColor: Theme.of(context).disabledColor.withOpacity(.3),
      highlightColor: Theme.of(context).disabledColor.withOpacity(.1),
            child: ListTile(
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: buildShimmerContainer(
                  height: 50,
                  width: 50,
                ),
              ),
              title: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  buildShimmerContainer(
                    width: 250,
                    height: 15,
                  ),
                  const SizedBox(height: Const.space8),
                  buildShimmerContainer(height: 15),
                  const SizedBox(height: Const.space12),
                  buildShimmerContainer(
                    width: 75,
                    height: 10,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Expanded _buildNotificationList(
    BuildContext context, {
    required List<Notifications> notifications,
  }) {
    final theme = Theme.of(context);
    return Expanded(
      child: ListView.separated(
        itemCount: notifications.length,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, index) {
          return const Divider(thickness: 2);
        },
        itemBuilder: (context, index) {
          final data = notifications[index];
          return Slidable(
            endActionPane: ActionPane(
              motion: const ScrollMotion(),
              children: [
                SlidableAction(
                  onPressed: (_) {
                    showToast(
                      msg: AppLocalizations.of(context)!.notification_deleted,
                    );
                  },
                  icon: IconlyLight.delete,
                  backgroundColor: theme.errorColor,
                ),
              ],
            ),
            child: ListTile(
              contentPadding: const EdgeInsets.symmetric(
                horizontal: Const.margin,
              ),
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: theme.disabledColor,
                backgroundImage: CachedNetworkImageProvider(data.companyImage),
              ),
              title: Text(
                '${data.message}\n',
                style: theme.textTheme.bodyText2,
              ),
              subtitle: Text(
                timeago.format(data.createdAt),
                style: theme.textTheme.subtitle2,
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
              AppLocalizations.of(context)!.notifications,
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
