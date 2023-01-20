import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/common/routes.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_elevated_button.dart';

class RegisterSuccessRecruiterPage extends StatelessWidget {
  const RegisterSuccessRecruiterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Scaffold(
      body: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Const.radius),
        ),
        margin: const EdgeInsets.all(Const.margin),
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(Const.margin),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(Illustrations.registeredSuccess),
              Padding(
                padding: const EdgeInsets.all(Const.margin),
                child: Text(
                  AppLocalizations.of(context)!.you_are_successfully_registered,
                  style: theme.textTheme.headline3,
                  textAlign: TextAlign.center,
                ),
              ),
              CustomElevatedButton(
                onTap: () {
                  Navigator.pushNamedAndRemoveUntil(
                    context,
                    HOME_RECRUITER,
                    ModalRoute.withName(HOME),
                  );
                },
                label: AppLocalizations.of(context)!.lets_go,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
