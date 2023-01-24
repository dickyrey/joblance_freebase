import 'package:advance_notification/advance_notification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/presentation/bloc/auth/sign_up_form/sign_up_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  bool _obscureText = true;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final lang = AppLocalizations.of(context)!;
    final themeCubit = context.read<ThemeCubit>().state;

    return BlocListener<SignUpFormBloc, SignUpFormState>(
      listener: (context, state) {
        if (state.state == RequestState.loaded) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            HOME,
            (Route<dynamic> route) => false,
          );
        } else if (state.state == RequestState.error) {
          if (state.message == ExceptionMessage.usernameOrPhoneAlreadyTaken) {
            AdvanceSnackBar(
              message: lang.email_already_in_use,
              bgColor: theme.errorColor,
            ).show(context);
          } else if (state.message == ExceptionMessage.internetNotConnected) {
            AdvanceSnackBar(
              message: lang.no_internet_connection,
              bgColor: theme.errorColor,
            ).show(context);
          }
        }
      },
      child: Scaffold(
        backgroundColor: (themeCubit is ThemeDark)
            ? ColorDark.background
            : ColorLight.catSkillWhite,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                children: [
                  const SizedBox(height: Const.space50),
                  Card(
                    elevation: 0,
                    margin: const EdgeInsets.symmetric(
                      horizontal: Const.margin,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(Const.radius),
                    ),
                    child: Container(
                      width: Screens.width(context),
                      padding: const EdgeInsets.symmetric(
                        horizontal: Const.margin,
                        vertical: Const.space25,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(
                                Const.radius,
                              ),
                              child: SvgPicture.asset(
                                CustomIcons.joblanceIcon,
                                width: 50,
                                height: 50,
                              ),
                            ),
                          ),
                          const SizedBox(height: Const.space15),
                          Center(
                            child: Text(
                              lang.register_to_joblance,
                              style: theme.textTheme.headline3,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          const SizedBox(height: Const.space25),
                          Text(
                            lang.username,
                            style: theme.textTheme.subtitle2,
                          ),
                          const SizedBox(height: Const.space8),
                          CustomTextFormField(
                            hintText: lang.enter_your_username,
                            minLength: 5,
                            onChanged: (v) {
                              context
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.fullNameOnChanged(v));
                            },
                          ),
                          const SizedBox(height: Const.space25),
                          Text(
                            lang.mobile_number,
                            style: theme.textTheme.subtitle2,
                          ),
                          const SizedBox(height: Const.space8),
                          CustomTextFormField(
                            hintText: lang.enter_your_mobile_number,
                            textFieldType: TextFieldType.phoneNumber,
                            onChanged: (v) {
                              context
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.phoneNumberOnChanged(v));
                            },
                          ),
                          const SizedBox(height: Const.space25),
                          Text(
                            lang.email_address,
                            style: theme.textTheme.subtitle2,
                          ),
                          const SizedBox(height: Const.space8),
                          CustomTextFormField(
                            hintText: lang.enter_your_email_address,
                            textFieldType: TextFieldType.email,
                            onChanged: (v) {
                              context
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.emailOnChanged(v));
                            },
                          ),
                          const SizedBox(height: Const.space25),
                          Text(
                            lang.password,
                            style: theme.textTheme.subtitle2,
                          ),
                          const SizedBox(height: Const.space8),
                          CustomTextFormField(
                            hintText: lang.enter_your_password,
                            textFieldType: TextFieldType.password,
                            obscureText: _obscureText,
                            suffixIcon: IconButton(
                              onPressed: () => setState(
                                () => _obscureText = !_obscureText,
                              ),
                              color: theme.primaryColor,
                              icon: Icon(
                                _obscureText
                                    ? FeatherIcons.eyeOff
                                    : FeatherIcons.eye,
                              ),
                            ),
                            onChanged: (v) {
                              context
                                  .read<SignUpFormBloc>()
                                  .add(SignUpFormEvent.passwordOnChanged(v));
                            },
                          ),
                          const SizedBox(height: Const.space25),
                          BlocBuilder<SignUpFormBloc, SignUpFormState>(
                            builder: (context, state) {
                              return CustomElevatedButton(
                                onTap: () {
                                  if (_formKey.currentState!.validate()) {
                                    context.read<SignUpFormBloc>().add(
                                          const SignUpFormEvent.signUpPressed(),
                                        );
                                  }
                                },
                                isLoading: (state.state == RequestState.loading)
                                    ? true
                                    : false,
                                label: lang.sign_up,
                              );
                            },
                          ),
                          const SizedBox(height: Const.space15),
                          Center(
                            child: Text(
                              '--- ${lang.or} ---',
                              style: theme.textTheme.bodyText2,
                            ),
                          ),
                          const SizedBox(height: Const.space15),
                          BlocBuilder<SignUpFormBloc, SignUpFormState>(
                            builder: (context, state) {
                              return CustomElevatedButton(
                                onTap: () {
                                  context.read<SignUpFormBloc>().add(
                                        const SignUpFormEvent
                                            .signUpWithGooglePressed(),
                                      );
                                },
                                isLoading: state.isSubmitting,
                                color: (themeCubit is ThemeDark)
                                    ? ColorDark.background
                                    : ColorLight.catSkillWhite,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(CustomIcons.google),
                                    const SizedBox(width: Const.space12),
                                    Text(
                                      lang.continue_with_google,
                                      style: theme.textTheme.button!.copyWith(
                                        color: (themeCubit is ThemeDark)
                                            ? ColorDark.fontTitle
                                            : ColorLight.fontTitle,
                                      ),
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                          const SizedBox(height: Const.space25),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                lang.already_have_an_account,
                                style: theme.textTheme.subtitle1,
                              ),
                              CustomTextButton(
                                onTap: () => Navigator.pop(context),
                                label: lang.sign_in,
                                fontSize: 14,
                                fontColor: theme.primaryColor,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
