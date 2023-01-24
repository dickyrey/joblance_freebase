import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/presentation/bloc/company/create_company/create_company_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_form_field.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';

class RegisterCompanyPage extends StatefulWidget {
  const RegisterCompanyPage({Key? key}) : super(key: key);

  @override
  State<RegisterCompanyPage> createState() => _RegisterCompanyPageState();
}

class _RegisterCompanyPageState extends State<RegisterCompanyPage> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<CreateCompanyFormBloc, CreateCompanyFormState>(
      listener: (context, state) {
        if (state.state == RequestState.error) {
          showToast(msg: 'Failed to Create a Company');
        } else if (state.state == RequestState.loaded) {
          Navigator.pushReplacementNamed(
            context,
            REGISTER_RECRUITER_SUCCESS,
          );
        }
      },
      builder: (context, state) {
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
                            AppLocalizations.of(context)!.company_name,
                            style: theme.textTheme.subtitle2,
                          ),
                          const SizedBox(height: Const.space8),
                          CustomTextFormField(
                            hintText: AppLocalizations.of(context)!
                                .enter_your_company_name,
                            onChanged: (v) {
                              context
                                  .read<CreateCompanyFormBloc>()
                                  .add(CreateCompanyFormEvent.nameOnChanged(v));
                            },
                          ),
                          const SizedBox(height: Const.space25),
                          Text(
                            AppLocalizations.of(context)!.company_email_address,
                            style: theme.textTheme.subtitle2,
                          ),
                          const SizedBox(height: Const.space8),
                          CustomTextFormField(
                            hintText: AppLocalizations.of(context)!
                                .enter_your_company_email_address,
                            textFieldType: TextFieldType.email,
                            onChanged: (v) {
                              context.read<CreateCompanyFormBloc>().add(
                                    CreateCompanyFormEvent.emailOnChanged(v),
                                  );
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
                            textFieldType: TextFieldType.number,
                            onChanged: (v) {
                              context.read<CreateCompanyFormBloc>().add(
                                    CreateCompanyFormEvent
                                        .totalEmployeeOnChanged(
                                      v,
                                    ),
                                  );
                            },
                          ),
                          const SizedBox(height: Const.space25),
                          CustomElevatedButton(
                            onTap: () {
                              if (formKey.currentState!.validate()) {
                                context.read<CreateCompanyFormBloc>().add(
                                      const CreateCompanyFormEvent
                                          .createCompanyPressed(),
                                    );
                              }
                            },
                            isLoading: state.isSubmitting ? true : false,
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
      },
    );
  }
}
