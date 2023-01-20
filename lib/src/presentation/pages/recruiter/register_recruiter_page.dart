import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_form_field.dart';

class RegisterRecruiterPage extends StatefulWidget {
  const RegisterRecruiterPage({Key? key}) : super(key: key);

  @override
  State<RegisterRecruiterPage> createState() => _RegisterRecruiterPageState();
}

class _RegisterRecruiterPageState extends State<RegisterRecruiterPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(Const.margin),
        child: Form(
          key: formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            children: [
              const SizedBox(height: Const.space50),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      AppLocalizations.of(context)!
                          .find_great_talent_for_your_business,
                      style: theme.textTheme.headline1,
                    ),
                  ),
                  SvgPicture.asset(Illustrations.hiringAlert),
                ],
              ),
              Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(Const.radius),
                ),
                elevation: 0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: Const.margin,
                    vertical: Const.space15,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppLocalizations.of(context)!.register_to_hire,
                        style: theme.textTheme.headline3,
                      ),
                      const SizedBox(height: Const.space25),
                      Text(
                        AppLocalizations.of(context)!.your_company_name,
                        style: theme.textTheme.subtitle2,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        hintText: AppLocalizations.of(context)!
                            .enter_your_company_name,
                        onChanged: (v) {
                          // context.read<RegisterFormCompanyBloc>().add(
                          //     RegisterFormCompanyEvent.companyNameOnChanged(
                          //         v));
                        },
                      ),
                      const SizedBox(height: Const.space25),
                      Text(
                        AppLocalizations.of(context)!.your_name,
                        style: theme.textTheme.subtitle2,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        hintText: AppLocalizations.of(context)!.enter_your_name,
                        onChanged: (v) {
                          // context
                          //     .read<RegisterFormCompanyBloc>()
                          //     .add(RegisterFormCompanyEvent.nameOnChanged(v));
                        },
                      ),
                      const SizedBox(height: Const.space25),
                      Text(
                        AppLocalizations.of(context)!
                            .your_role_in_the_hiring_process,
                        style: theme.textTheme.subtitle2,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        hintText: AppLocalizations.of(context)!.enter_your_role,
                        onChanged: (v) {
                          // context
                          //     .read<RegisterFormCompanyBloc>()
                          //     .add(RegisterFormCompanyEvent.roleOnChanged(v));
                        },
                      ),
                      const SizedBox(height: Const.space25),
                      Text(
                        AppLocalizations.of(context)!.mobile_number,
                        style: theme.textTheme.subtitle2,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        hintText: AppLocalizations.of(context)!
                            .enter_your_phone_number,
                        textFieldType: TextFieldType.phoneNumber,
                        onChanged: (v) {
                          // context.read<RegisterFormCompanyBloc>().add(
                          //     RegisterFormCompanyEvent.phoneNumberOnChanged(
                          //         v));
                        },
                      ),
                      const SizedBox(height: Const.space25),
                      Text(
                        AppLocalizations.of(context)!.company_size,
                        style: theme.textTheme.subtitle2,
                      ),
                      const SizedBox(height: Const.space8),
                      CustomTextFormField(
                        hintText: AppLocalizations.of(context)!
                            .enter_the_number_of_employees,
                        onChanged: (v) {
                          // context.read<RegisterFormCompanyBloc>().add(
                          //     RegisterFormCompanyEvent.companySizeOnChanged(
                          //         v));
                        },
                      ),
                      const SizedBox(height: Const.space25),
                      CustomElevatedButton(
                        onTap: () {
                          Navigator.pushReplacementNamed(context, REGISTER_RECRUITER_SUCCESS);
                          // if (formKey.currentState!.validate()) {
                          //   context.read<RegisterFormCompanyBloc>().add(
                          //       const RegisterFormCompanyEvent
                          //           .registerPressed());
                          // }
                        },
                        label: AppLocalizations.of(context)!.register_now,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
