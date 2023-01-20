import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/domain/entities/job.dart';
import 'package:octo_image/octo_image.dart';
import 'package:timeago/timeago.dart' as timeago;

class JobVerticalCard extends StatelessWidget {
  const JobVerticalCard({
    Key? key,
    required this.job,
  }) : super(key: key);

  final Job job;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () => Navigator.pushNamed(
        context,
        JOB_DETAILS,
        arguments: job.id,
      ),
      child: Card(
        elevation: 0,
        margin: const EdgeInsets.only(bottom: Const.space15),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Const.radius),
        ),
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: Const.space8),
          leading: ClipRRect(
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
          title: Text(
            job.position,
            style: theme.textTheme.headline3?.copyWith(
              height: 1.3,
            ),
            maxLines: 2,
          ),
          subtitle: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: '${job.location}\n',
                  style: theme.textTheme.subtitle1,
                ),
                TextSpan(
                  text: timeago.format(job.createdAt),
                  style: theme.textTheme.bodyText2,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
