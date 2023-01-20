import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/presentation/bloc/job/job_form/job_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_form_field.dart';
import 'package:joblance_firebase/src/utilities/toast.dart';

class JobFormRecruiterPage extends StatefulWidget {
  const JobFormRecruiterPage({Key? key}) : super(key: key);

  @override
  State<JobFormRecruiterPage> createState() => _JobFormRecruiterPageState();
}

class _JobFormRecruiterPageState extends State<JobFormRecruiterPage> {
  final _formKey = GlobalKey<FormState>();

  final List<String> _experienceLevelList = const [
    'Beginner',
    'Intermediate',
    'Advance',
    'Expert',
  ];
  final List<String> _jobTypeList = const [
    'Remote',
    'Part Time',
    'Full Time',
    'On Site',
  ];

  String _buildIcon(int val) {
    switch (val) {
      case 1:
        return CustomIcons.designer;
      case 2:
        return CustomIcons.development;
      case 3:
        return CustomIcons.it;
      case 4:
        return CustomIcons.management;
      case 5:
        return CustomIcons.marketing;
      case 6:
        return CustomIcons.research;

      default:
        return CustomIcons.designer;
    }
  }

  @override
  void initState() {
    super.initState();
    context.read<JobFormBloc>().add(const JobFormEvent.fetchCategories());
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<JobFormBloc, JobFormState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: Const.margin),
              child: Form(
                key: _formKey,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: Column(
                  children: [
                    const SizedBox(height: Const.space15),
                    _buildAppBar(context),
                    const SizedBox(height: Const.space15),
                    Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          width: Screens.width(context),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(height: Const.space25),
                              Text(
                                AppLocalizations.of(context)!.select_category,
                                style: theme.textTheme.bodyText1,
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: Const.space12),
                              Wrap(
                                spacing: Const.space15,
                                runSpacing: Const.space15,
                                children: state.categories
                                    .asMap()
                                    .entries
                                    .map(
                                      (e) => InkWell(
                                        onTap: () {
                                          context.read<JobFormBloc>().add(
                                                JobFormEvent.categoryOnChange(
                                                  e.value,
                                                ),
                                              );
                                        },
                                        borderRadius: BorderRadius.circular(
                                          Const.radius,
                                        ),
                                        child: Container(
                                          height: 45,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: Const.space15,
                                          ),
                                          decoration: BoxDecoration(
                                            color:
                                                (state.selectedCategory?.id ==
                                                        e.value.id)
                                                    ? theme.primaryColor
                                                    : theme.backgroundColor,
                                            borderRadius:
                                                BorderRadius.circular(Const.radius),
                                            border: Border.all(
                                              color:
                                                  (state.selectedCategory?.id ==
                                                          e.value.id)
                                                      ? theme.backgroundColor
                                                      : ColorLight.linkWater,
                                            ),
                                          ),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              SvgPicture.asset(
                                                _buildIcon(e.value.id),
                                              ),
                                              const SizedBox(width: Const.space15),
                                              Text(
                                                e.value.name,
                                                style:
                                                    theme.textTheme.bodyText2,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                    .toList(),
                              ),
                              const SizedBox(height: Const.space25),
                              Text(
                                AppLocalizations.of(context)!.job_position,
                                style: theme.textTheme.bodyText1,
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: Const.space12),
                              CustomTextFormField(
                                hintText: AppLocalizations.of(context)!
                                    .enter_job_position,
                                onChanged: (v) {
                                  context.read<JobFormBloc>().add(
                                        JobFormEvent.positionOnChanged(v),
                                      );
                                },
                              ),
                              const SizedBox(height: Const.space15),
                              Text(
                                AppLocalizations.of(context)!.experience_level,
                                style: theme.textTheme.bodyText1,
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: Const.space12),
                              DropdownButtonHideUnderline(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: Const.space12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Const.radius),
                                    border: Border.all(
                                      color: theme.disabledColor,
                                    ),
                                  ),
                                  child: DropdownButton<String>(
                                    value: (state.experienceLevel != '')
                                        ? state.experienceLevel
                                        : _experienceLevelList.first,
                                    isExpanded: true,
                                    dropdownColor: theme.backgroundColor,
                                    onChanged: (v) {
                                      context.read<JobFormBloc>().add(
                                            JobFormEvent
                                                .experienceLevelOnChanged(v!),
                                          );
                                    },
                                    items: _experienceLevelList
                                        .map(
                                          (e) => DropdownMenuItem<String>(
                                            value: e,
                                            child: Text(
                                              e,
                                              style: theme.textTheme.bodyText2,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                              const SizedBox(height: Const.space15),
                              Text(
                                AppLocalizations.of(context)!.job_type,
                                style: theme.textTheme.bodyText1,
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: Const.space12),
                              DropdownButtonHideUnderline(
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: Const.space12,
                                  ),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(Const.radius),
                                    border: Border.all(
                                      color: theme.disabledColor,
                                    ),
                                  ),
                                  child: DropdownButton<String>(
                                    value: state.jobType,
                                    isExpanded: true,
                                    dropdownColor: theme.backgroundColor,
                                    onChanged: (v) {
                                      context.read<JobFormBloc>().add(
                                            JobFormEvent.jobTypeOnChanged(v!),
                                          );
                                    },
                                    items: _jobTypeList
                                        .map(
                                          (e) => DropdownMenuItem<String>(
                                            value: e,
                                            child: Text(
                                              e,
                                              style: theme.textTheme.bodyText2,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ),
                              ),
                              const SizedBox(height: Const.space15),
                              Text(
                                AppLocalizations.of(context)!.salary,
                                style: theme.textTheme.bodyText1,
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: Const.space12),
                              CustomTextFormField(
                                hintText:
                                    AppLocalizations.of(context)!.enter_salary,
                                textFieldType: TextFieldType.number,
                                onChanged: (v) {
                                  context.read<JobFormBloc>().add(
                                        JobFormEvent.salaryOnChanged(v),
                                      );
                                },
                              ),
                              const SizedBox(height: Const.space15),
                              Text(
                                AppLocalizations.of(context)!.job_description,
                                style: theme.textTheme.bodyText1,
                                textAlign: TextAlign.start,
                              ),
                              const SizedBox(height: Const.space12),
                              CustomTextFormField(
                                hintText: AppLocalizations.of(context)!
                                    .enter_job_description,
                                onChanged: (v) {
                                  context.read<JobFormBloc>().add(
                                        JobFormEvent.salaryOnChanged(v),
                                      );
                                },
                                maxLines: null,
                              ),
                              const SizedBox(height: Const.space25),
                              CustomElevatedButton(
                                onTap: () {
                                  Navigator.pop(context);
                                  showToast(msg: AppLocalizations.of(context)!.job_posted);
                                },
                                label: AppLocalizations.of(context)!.post_a_job,
                              ),
                              const SizedBox(height: Const.space25),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  SizedBox _buildAppBar(BuildContext context) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;
    
    return SizedBox(
      width: Screens.width(context),
      height: 45,
      child: Row(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(Const.radius),
            onTap: () => Navigator.pop(context),
            child: Container(
              width: 45,
              height: 45,
              decoration: BoxDecoration(
                color: (themeCubit is ThemeDark)
                    ? ColorDark.card
                    : ColorLight.whiteSmoke,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: const Icon(
                IconlyLight.arrowLeft,
              ),
            ),
          ),
          const SizedBox(width: Const.space15),
          Text(
            AppLocalizations.of(context)!.post_a_job,
            style: theme.textTheme.headline2,
          ),
        ],
      ),
    );
  }
}
