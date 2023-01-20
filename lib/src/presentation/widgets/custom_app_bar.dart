import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
AppBar CustomAppBar(
  BuildContext context, {
  String? title,
  bool centerTitle = true,
  bool enableLeading = true,
  List<Widget>? actions,
  void Function()? leadingOntap,
  PreferredSizeWidget? bottom,
  Color? backgroundColor,
}) {
  final theme = Theme.of(context);
  return AppBar(
    backgroundColor:
        (backgroundColor == null) ? theme.backgroundColor : backgroundColor,
    centerTitle: centerTitle,
    leading: enableLeading
        ? IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: (leadingOntap == null)
                ? () => Navigator.pop(context)
                : leadingOntap,
            color: theme.primaryColor,
          )
        : const SizedBox(),
    title: Text(title ?? '', style: theme.textTheme.headline3),
    actions: actions,
    bottom: bottom,
  );
}
