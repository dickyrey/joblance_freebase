import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:joblance_firebase/src/common/const.dart';

enum TextFieldType { alphabet, email, text, password, phoneNumber, number }

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    this.controller,
    this.textFieldType = TextFieldType.text,
    this.hintText,
    this.helperText,
    this.onChanged,
    this.maxLength,
    this.labelText,
    this.suffixIcon,
    this.obscureText = false,
    this.maxLines = 1,
    this.helperMaxLines,
    this.textAlign = TextAlign.left,
    this.inputFormatters,
    this.enabled = true,
    this.textInputAction,
    this.textInputType,
    this.minLength = 1,
  }) : super(key: key);

  final TextEditingController? controller;
  final TextFieldType textFieldType;
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final Widget? suffixIcon;
  final bool? obscureText;
  final int? maxLines;
  final int? helperMaxLines;
  final int? maxLength;
  final TextAlign? textAlign;
  final List<TextInputFormatter>? inputFormatters;
  final bool enabled;
  final ValueChanged<String>? onChanged;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final int minLength;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final alphabetValidator = MultiValidator([
      RequiredValidator(
        errorText: AppLocalizations.of(context)!.please_enter_a_value,
      ),
      PatternValidator(
        r'^[A-Za-z_ .,]+$',
        errorText: AppLocalizations.of(context)!.invalid_data_format,
      ),
    ]);

    final emailValidator = MultiValidator([
      RequiredValidator(
        errorText:
            AppLocalizations.of(context)!.enter_your_email_address,
      ),
      EmailValidator(
        errorText: AppLocalizations.of(context)!.invalid_email_address_format,
      )
    ]);

    final passwordValidator = MultiValidator([
      RequiredValidator(
        errorText: AppLocalizations.of(context)!.enter_your_password,
      ),
      MinLengthValidator(
        6,
        errorText: AppLocalizations.of(context)!.invalid_password_format,
      )
    ]);

    final phoneNumberValidator = MultiValidator([
      RequiredValidator(
        errorText:
            AppLocalizations.of(context)!.enter_your_mobile_number,
      ),
      MinLengthValidator(
        7,
        errorText: AppLocalizations.of(context)!.invalid_mobile_number_format,
      ),
      PatternValidator(
        r'^[0-9]+$',
        errorText: AppLocalizations.of(context)!.invalid_mobile_number_format,
      ),
    ]);

    final textValidator = MultiValidator([
      RequiredValidator(
        errorText: AppLocalizations.of(context)!.please_enter_a_value,
      ),
      MinLengthValidator(
        minLength,
        errorText: AppLocalizations.of(context)!.data_is_too_short,
      ),
    ]);

    final numberValidator = MultiValidator([
      RequiredValidator(
        errorText: AppLocalizations.of(context)!.please_enter_a_value,
      ),
      MinLengthValidator(
        1,
        errorText: AppLocalizations.of(context)!.data_is_too_short,
      ),
      PatternValidator(
        r'^[0-9]+$',
        errorText: AppLocalizations.of(context)!.invalid_number_format,
      ),
    ]);

    TextInputType keyboardType(TextFieldType textFieldType) {
      switch (textFieldType) {
        case TextFieldType.alphabet:
          return TextInputType.text;
        case TextFieldType.email:
          return TextInputType.emailAddress;
        case TextFieldType.number:
          return TextInputType.number;
        case TextFieldType.password:
          return TextInputType.text;
        case TextFieldType.phoneNumber:
          return TextInputType.phone;
        case TextFieldType.text:
          return TextInputType.text;
      }
    }

    MultiValidator validator(TextFieldType textFieldType) {
      switch (textFieldType) {
        case TextFieldType.alphabet:
          return alphabetValidator;
        case TextFieldType.email:
          return emailValidator;
        case TextFieldType.number:
          return numberValidator;
        case TextFieldType.password:
          return passwordValidator;
        case TextFieldType.phoneNumber:
          return phoneNumberValidator;
        case TextFieldType.text:
          return textValidator;
      }
    }

    return TextFormField(
      controller: controller,
      maxLines: maxLines,
      maxLength: maxLength,
      enabled: enabled,
      onChanged: onChanged,
      textAlign: textAlign ?? TextAlign.left,
      obscureText: obscureText ?? false,
      style: theme.textTheme.bodyText1,
      inputFormatters: inputFormatters ?? [],
      keyboardType: textInputType ?? keyboardType(textFieldType),
      validator: validator(textFieldType),
      textInputAction: textInputAction,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: theme.textTheme.subtitle2,
        labelText: labelText,
        labelStyle: theme.textTheme.subtitle1,
        suffixIcon: suffixIcon,
        helperMaxLines: helperMaxLines,
        helperText: helperText,
        helperStyle: theme.textTheme.subtitle2?.copyWith(fontSize: 10),
        contentPadding: const EdgeInsets.symmetric(horizontal: Const.space12),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.disabledColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.primaryColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.errorColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.errorColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(Const.radius),
          borderSide: BorderSide(color: theme.disabledColor),
        ),
      ),
    );
  }
}
