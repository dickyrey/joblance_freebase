import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/colors.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:joblance_firebase/src/presentation/cubit/theme_cubit.dart';
import 'package:octo_image/octo_image.dart';

class JobHorizontalCard extends StatelessWidget {
  const JobHorizontalCard({
    Key? key,
    required this.job,
  }) : super(key: key);

  final Job job;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final themeCubit = context.read<ThemeCubit>().state;

    return Container(
      width: 250,
      height: 150,
      margin: const EdgeInsets.only(right: Const.space15),
      padding: const EdgeInsets.all(Const.space12),
      decoration: BoxDecoration(
        color:
            (themeCubit is ThemeDark) ? ColorDark.card : ColorLight.linkWater,
        borderRadius: BorderRadius.circular(Const.radius),
      ),
      child: InkWell(
        onTap: () => Navigator.pushNamed(
          context,
          JOB_DETAILS,
          arguments: job.id,
        ),
        child: Row(
          children: [
            Container(
              width: 90,
              height: 150,
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(Const.radius),
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(Const.radius),
                    child: OctoImage(
                      width: 80,
                      height: 80,
                      image: CachedNetworkImageProvider(
                        job.companyImage,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        job.companyName,
                        style: theme.textTheme.bodyText2?.copyWith(
                          height: 1.2,
                          fontSize: 13,
                        ),
                        textAlign: TextAlign.center,
                        maxLines: 2,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(width: Const.space12),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: Const.space8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      job.position,
                      style: theme.textTheme.headline3?.copyWith(
                        height: 1.3,
                      ),
                      maxLines: 1,
                    ),
                    Text(
                      job.location,
                      style: theme.textTheme.subtitle1?.copyWith(
                        height: 1.3,
                      ),
                      maxLines: 2,
                    ),
                    Text(
                      NumberFormat.currency(
                        customPattern: r'$',
                        decimalDigits: 0,
                      ).format(job.salary),
                      style: theme.textTheme.headline2,
                      maxLines: 1,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
