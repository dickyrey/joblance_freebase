import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/screens.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_text_form_field.dart';

class HomeRecruiterPage extends StatelessWidget {
  const HomeRecruiterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _BuildBody(),
    );
  }
}

class _BuildBody extends StatelessWidget {
  // final Company company;

  const _BuildBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;

    return SafeArea(
      child: Column(
        children: [
          const SizedBox(height: Const.space25),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Jobiago',
                  style: GoogleFonts.concertOne(
                    fontSize: 25,
                    color: (themeCubit is ThemeDark)
                        ? ColorDark.fontTitle
                        : ColorLight.fontTitle,
                  ),
                ),
                InkWell(
                  borderRadius: BorderRadius.circular(Const.radius),
                  // onTap: () => Navigator.pushNamed(context, COMPANY_PROFILE),
                  onTap: () {
                    // context.read<ThemeCubit>().changeTheme();
                  },
                  child: Container(
                    width: 45,
                    height: 45,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(Const.radius),
                      image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: CachedNetworkImageProvider(
                          Const.companyImage,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(Const.margin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hi, Byneet DEV',
                    style: theme.textTheme.subtitle1,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: Const.space12),
                  Text(
                    AppLocalizations.of(context)!
                        .find_great_talent_for_your_business,
                    style: theme.textTheme.headline1,
                    textAlign: TextAlign.start,
                  ),
                  const SizedBox(height: Const.space25),
                  Row(
                    children: [
                      Expanded(
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: theme.cardColor,
                            borderRadius: BorderRadius.circular(Const.radius),
                          ),
                          child: CustomTextFormField(
                            hintText:
                                AppLocalizations.of(context)!.search_candidate,
                          ),
                        ),
                      ),
                      const SizedBox(width: Const.space15),
                      CustomElevatedButton(
                        width: 50,
                        height: 50,
                        onTap: () {},
                        child: const Icon(
                          IconlyLight.search,
                          color: Colors.white,
                          size: 20,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: Const.space25),
                  _buildCard(
                    context,
                    icon: IconlyBold.user3,
                    title: AppLocalizations.of(context)!.applications,
                    subtitle: '12',
                    color: ColorLight.silverTree,
                  ),
                  const SizedBox(height: Const.space15),
                  _buildCard(
                    context,
                    icon: IconlyBold.bag2,
                    title: AppLocalizations.of(context)!.published_jobs,
                    subtitle: '27',
                    color: ColorLight.paleOrange,
                  ),
                  const SizedBox(height: Const.space15),
                  _buildCard(
                    context,
                    icon: IconlyBold.message,
                    title: AppLocalizations.of(context)!.unread_messages,
                    subtitle: '12',
                    color: ColorLight.dodgerBlue,
                  ),
                  const SizedBox(height: Const.space25 * 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
  }) {
    final theme = Theme.of(context);
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      child: SizedBox(
        width: Screens.width(context),
        height: 100,
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              margin: const EdgeInsets.symmetric(horizontal: Const.space15),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(Const.radius),
                color: color,
              ),
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 35,
                ),
              ),
            ),
            const SizedBox(width: Const.space25),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: theme.textTheme.bodyText2,
                  ),
                  const SizedBox(height: Const.space8 - 3),
                  Text(
                    subtitle,
                    style: theme.textTheme.headline1?.copyWith(
                      fontSize: 27,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// class _BuildShimmerBody extends StatelessWidget {
//   const _BuildShimmerBody({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Shimmer.fromColors(
//         baseColor: Colors.grey.shade300,
//         highlightColor: Colors.grey.shade100,
//         enabled: true,
//         child: Padding(
//           padding: const EdgeInsets.symmetric(horizontal: Const.margin),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               const SizedBox(height: Const.space25),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   buildShimmerContainer(height: 15),
//                   buildShimmerContainer(width: 45, height: 45),
//                 ],
//               ),
//               const SizedBox(height: Const.space15),
//               buildShimmerContainer(),
//               const SizedBox(height: Const.space12),
//               buildShimmerContainer(
//                 height: 25,
//                 width: Screens.width(context) / 1.5,
//               ),
//               const SizedBox(height: Const.space8 - 3),
//               buildShimmerContainer(height: 25),
//               const SizedBox(height: Const.space25),
//               Row(
//                 children: [
//                   Expanded(child: buildShimmerContainer(height: 45)),
//                   const SizedBox(width: Const.space15),
//                   buildShimmerContainer(height: 45, width: 45),
//                 ],
//               )
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
