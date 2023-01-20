import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/domain/entities/chat.dart';
import 'package:joblance_firebase/src/domain/entities/messages.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_dialog.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';

class MessagesRecruiterPage extends StatefulWidget {
  const MessagesRecruiterPage({
    Key? key,
    required this.chat,
  }) : super(key: key);
  final Chat chat;

  @override
  State<MessagesRecruiterPage> createState() =>
      MessagesRecruiterPageState();
}

class MessagesRecruiterPageState
    extends State<MessagesRecruiterPage> {
  late ScrollController _scrollController;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
  }

  void _scrollToBottom() {
    _scrollController.jumpTo(_scrollController.position.minScrollExtent);
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => _scrollToBottom());
    return Scaffold(
      body: SafeArea(
        child: _buildBody(widget.chat),
      ),
    );
  }

  Stack _buildBody(Chat chat) {
    final theme = Theme.of(context);
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: Container(
            height: 90,
            color: theme.disabledColor.withOpacity(.5),
            padding: const EdgeInsets.all(Const.margin),
            child: Row(
              children: [
                InkWell(
                  onTap: () => Navigator.pop(context),
                  borderRadius: BorderRadius.circular(20),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundColor: theme.cardColor,
                    child: const Icon(
                      IconlyLight.arrowLeft,
                      color: ColorLight.fontTitle,
                    ),
                  ),
                ),
                const SizedBox(width: Const.space15),
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        chat.name,
                        style: theme.textTheme.headline3,
                        textAlign: TextAlign.center,
                        maxLines: 1,
                      ),
                      const SizedBox(height: Const.space8 - 3),
                      if (chat.isOnline == true)
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: theme.disabledColor,
                            borderRadius: BorderRadius.circular(Const.radius),
                          ),
                          child: Text(
                            AppLocalizations.of(context)!.online,
                            style: theme.textTheme.subtitle2
                                ?.copyWith(color: Colors.green),
                          ),
                        )
                      else
                        const SizedBox()
                    ],
                  ),
                ),
                const SizedBox(width: Const.space15),
                CircleAvatar(
                  radius: 25,
                  backgroundColor: theme.cardColor,
                  backgroundImage: CachedNetworkImageProvider(
                    chat.profileImage,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: 80,
          left: 0,
          right: 0,
          bottom: 0,
          child: Card(
            margin: EdgeInsets.zero,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Const.radius * 2),
                topRight: Radius.circular(Const.radius * 2),
              ),
            ),
            elevation: 0,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    shrinkWrap: true,
                    reverse: true,
                    itemCount: chat.messages.reversed.length,
                    padding: const EdgeInsets.symmetric(
                      vertical: Const.margin,
                    ),
                    itemBuilder: (context, index) {
                      final data = chat.messages.reversed.toList()[index];
                      return _buildBubbleChat(data);
                    },
                  ),
                ),
                Container(
                  width: Screens.width(context),
                  height: 50,
                  margin: const EdgeInsets.all(Const.margin),
                  child: Row(
                    children: [
                      Expanded(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: theme.disabledColor.withOpacity(.5),
                            borderRadius: BorderRadius.circular(Const.radius),
                          ),
                          child: Row(
                            children: [
                              IconButton(
                                icon: const Icon(IconlyLight.camera),
                                color: ColorLight.fontTitle,
                                onPressed: () {
                                  showPickImageDialog(
                                    context,
                                    onCameraTap: () {
                                      showToast(
                                        msg: AppLocalizations.of(context)!
                                            .camera_on_pressed,
                                      );
                                    },
                                    onGalleryTap: () {
                                      showToast(
                                        msg: AppLocalizations.of(context)!
                                            .gallery_on_pressed,
                                      );
                                    },
                                  );
                                },
                              ),
                              Expanded(
                                child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: AppLocalizations.of(context)!
                                        .type_a_message,
                                    hintStyle: theme.textTheme.subtitle2,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: Const.space15),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: theme.primaryColor,
                        child: IconButton(
                          icon: const Icon(IconlyLight.send),
                          color: Colors.white,
                          onPressed: () {
                            showToast(
                              msg:
                                  AppLocalizations.of(context)!.send_on_pressed,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildBubbleChat(Messages message) {
    final theme = Theme.of(context);
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: Const.margin),
          alignment: message.isSender ? Alignment.topLeft : Alignment.topRight,
          child: Container(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width * 2,
            ),
            padding: const EdgeInsets.symmetric(
              horizontal: Const.margin,
              vertical: 5,
            ),
            margin: EdgeInsets.fromLTRB(
              message.isSender ? 0.0 : Screens.width(context) / 2.8,
              0,
              message.isSender ? Screens.width(context) / 2.8 : 0.0,
              Const.space15,
            ),
            decoration: BoxDecoration(
              color: message.isSender
                  ? Colors.white
                  : ColorLight.silverTree.withOpacity(.5),
              borderRadius: BorderRadius.circular(15),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 5,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: message.isSender
                  ? CrossAxisAlignment.start
                  : CrossAxisAlignment.end,
              children: [
                Text(
                  message.message,
                  style: theme.textTheme.bodyText2,
                ),
                const SizedBox(height: Const.space8 - 3),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (message.isSender)
                      const SizedBox()
                    else
                      Icon(
                        (message.isRead) ? Icons.done_all : Icons.done,
                        size: 15,
                        color: theme.primaryColor,
                      ),
                    if (message.isSender)
                      const SizedBox()
                    else
                      const SizedBox(width: Const.space8),
                    Text(
                      DateFormat('HH:mm').format(message.createdAt),
                      textAlign:
                          message.isSender ? TextAlign.left : TextAlign.right,
                      style: theme.textTheme.subtitle2?.copyWith(
                        color: ColorLight.fontSubtitle,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
