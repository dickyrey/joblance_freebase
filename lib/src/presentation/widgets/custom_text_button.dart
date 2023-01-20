import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.onTap,
    required this.label,
    this.fontColor,
    this.fontSize,
  }) : super(key: key);
  
  final VoidCallback onTap;
  final String label;
  final Color? fontColor;
  final double? fontSize;
  
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextButton(
      onPressed: onTap,
      child: Text(
        label,
        style: theme.textTheme.bodyText1?.copyWith(
          color: fontColor,
          fontSize: fontSize,
        ),
      ),
    );
  }
}
