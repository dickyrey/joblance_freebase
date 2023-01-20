import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/presentation/bloc/interest/interest_form/interest_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';

class InterestPage extends StatefulWidget {
  const InterestPage({Key? key}) : super(key: key);

  @override
  State<InterestPage> createState() => InterestPageState();
}

class InterestPageState extends State<InterestPage> {
  @override
  void initState() {
    super.initState();
    Future.microtask(
      () => context
          .read<InterestFormBloc>()
          .add(const InterestFormEvent.fetchCategories()),
    );
  }

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
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocConsumer<InterestFormBloc, InterestFormState>(
      listener: (context, state) {
        if (state.state == RequestState.loaded) {
          Navigator.pushNamedAndRemoveUntil(
            context,
            SIGN_IN,
            (route) => false,
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(Const.margin),
              child: Column(
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppLocalizations.of(context)!
                                .what_type_of_job_your_looking_for,
                            style: theme.textTheme.headline1,
                            textAlign: TextAlign.start,
                          ),
                          const SizedBox(height: Const.space8),
                          Container(
                            width: 100,
                            height: 5,
                            decoration: BoxDecoration(
                              color: theme.primaryColor,
                              borderRadius: BorderRadius.circular(Const.radius),
                            ),
                          ),
                          const SizedBox(height: Const.space25),
                          ListView.builder(
                            itemCount: state.selectedJobs.length,
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              final job = state.selectedJobs[index];
                              return Card(
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(Const.radius),
                                ),
                                margin: const EdgeInsets.only(bottom: Const.space15),
                                child: CheckboxListTile(
                                  value: job.value,
                                  activeColor: theme.primaryColor,
                                  onChanged: (v) {
                                    setState(() {
                                      job.value = v!;
                                    });
                                  },
                                  title: Row(
                                    children: [
                                      SvgPicture.asset(
                                        _buildIcon(job.category.id),
                                        width: 30,
                                      ),
                                      const SizedBox(width: Const.space15),
                                      Text(
                                        job.category.name,
                                        style: theme.textTheme.bodyText2,
                                      ),
                                      const Spacer(),
                                    ],
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: Const.space15),
                  CustomElevatedButton(
                    onTap: () => context
                        .read<InterestFormBloc>()
                        .add(const InterestFormEvent.sendInterest()),
                    label: AppLocalizations.of(context)!.proceed,
                    isLoading:
                        (state.state == RequestState.loading) ? true : false,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
