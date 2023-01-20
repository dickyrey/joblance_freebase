import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/domain/entities/onboarding.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_button.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;

  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  List<OnBoarding> _onBoardingList(BuildContext context) => [
        OnBoarding(
          imagePath: Illustrations.onBoarding1,
          title: AppLocalizations.of(context)!
              .explore_careers_that_have_high_job_satisfaction,
          subtitle: AppLocalizations.of(context)!
              .there_are_many_jobs_available_in_a_variety_of_big_companies_that_will_help_you_advance_your_career,
        ),
        OnBoarding(
          imagePath: Illustrations.onBoarding2,
          title: AppLocalizations.of(context)!.get_selected_for_your_dream_job,
          subtitle: AppLocalizations.of(context)!.you_can_find_many_dream_jobs_in_our_organization_that_you_would_like_to_apply_for,
        ),
        OnBoarding(
          imagePath: Illustrations.onBoarding3,
          title: AppLocalizations.of(context)!
              .we_help_you_to_connect_with_the_organization,
          subtitle: AppLocalizations.of(context)!.our_extensive_network_of_companies_allows_us_to_have_high_quality_connections_for_you_since_we_work_closely_with_so_many_of_them,
        ),
      ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              itemCount: _onBoardingList(context).length,
              onPageChanged: (v) {
                setState(() => _selectedIndex = v);
              },
              itemBuilder: (context, index) {
                final data = _onBoardingList(context)[index];
                return Padding(
                  padding: const EdgeInsets.all(Const.margin),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: Const.space50),
                      Expanded(child: SvgPicture.asset(data.imagePath)),
                      const SizedBox(height: Const.space25),
                      Text(
                        data.title,
                        style: theme.textTheme.headline1,
                        textAlign: TextAlign.start,
                      ),
                      const SizedBox(height: Const.space12),
                      Text(
                        data.subtitle,
                        textAlign: TextAlign.start,
                        style: theme.textTheme.subtitle1,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(Const.margin, 0, Const.margin, Const.margin),
            child: Column(
              children: [
                if (_selectedIndex == 2)
                  const SizedBox(height: 50)
                else
                  CustomTextButton(
                    onTap: () {
                      Navigator.pushReplacementNamed(context, INTEREST);
                    },
                    label: AppLocalizations.of(context)!.skip,
                  ),
                const SizedBox(height: Const.space12),
                CustomElevatedButton(
                  onTap: () {
                    if (_selectedIndex == 2) {
                      Navigator.pushReplacementNamed(context, INTEREST);
                    } else {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  label: (_selectedIndex == 2)
                      ? AppLocalizations.of(context)!.get_started
                      : AppLocalizations.of(context)!.next,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
