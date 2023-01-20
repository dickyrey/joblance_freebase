import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';

class ChatCard extends StatelessWidget {
  const ChatCard({
    Key? key,
    required this.chat,
    this.isRecruiter = false,
  }) : super(key: key);

  final Chat chat;
  final bool isRecruiter;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Slidable(
      endActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {},
            icon: IconlyLight.delete,
            label: AppLocalizations.of(context)!.delete,
            backgroundColor: Colors.red,
          )
        ],
      ),
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        onTap: (isRecruiter == true)
            ? () => Navigator.pushNamed(
                  context,
                  MESSAGES_RECRUITER,
                  arguments: chat,
                )
            : () => Navigator.pushNamed(
                  context,
                  MESSAGE_DETAIL,
                  arguments: chat,
                ),
        leading: CircleAvatar(
          radius: 25,
          backgroundImage: CachedNetworkImageProvider(
            chat.profileImage,
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Text(
                chat.name,
                maxLines: 1,
                style: theme.textTheme.bodyText1,
              ),
            ),
            const SizedBox(width: Const.space8),
            Text(
              DateFormat('HH:mm').format(chat.lastMessageDate),
              style: theme.textTheme.subtitle2,
            ),
          ],
        ),
        subtitle: Text(
          chat.lastMessage,
          style: theme.textTheme.subtitle1,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }
}
