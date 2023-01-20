import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';
import 'package:joblance_firebase/src/presentation/bloc/message/message_recruiter_watcher/message_recruiter_watcher_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/message_card.dart';
import 'package:joblance_firebase/src/presentation/widgets/shimmer.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';
import 'package:shimmer/shimmer.dart';

class ChatRecruiterPage extends StatelessWidget {
  const ChatRecruiterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildAppBar(context),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Text(
                AppLocalizations.of(context)!.direct_messages,
                style: theme.textTheme.headline4,
              ),
            ),
            const SizedBox(height: Const.space25),
            BlocBuilder<MessageRecruiterWatcherBloc,
                MessageRecruiterWatcherState>(
              builder: (context, state) {
                return state.maybeMap(
                  orElse: _buildMessageShimmer,
                  loaded: (state) {
                    return _buildChatList(
                      context,
                      chatList: state.chatList,
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

  Expanded _buildMessageShimmer() {
    return Expanded(
      child: Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        child: ListView.separated(
          itemCount: 4,
          physics: const BouncingScrollPhysics(),
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          separatorBuilder: (context, index) {
            return const Divider();
          },
          itemBuilder: (context, index) {
            return ListTile(
              contentPadding: EdgeInsets.zero,
              leading: const CircleAvatar(
                radius: 25,
              ),
              title: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: buildShimmerContainer(
                      height: 15,
                    ),
                  ),
                  const SizedBox(width: Const.space25),
                  buildShimmerContainer(
                    width: 50,
                    height: 15,
                  ),
                ],
              ),
              subtitle: buildShimmerContainer(
                width: 100,
                height: 12,
              ),
            );
          },
        ),
      ),
    );
  }

  Expanded _buildChatList(
    BuildContext context, {
    required List<Chat> chatList,
  }) {
    return Expanded(
      child: ListView.separated(
        itemCount: chatList.length,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: Const.margin),
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemBuilder: (context, index) {
          final message = chatList[index];
          return ChatCard(chat: message);
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
              AppLocalizations.of(context)!.messages,
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
