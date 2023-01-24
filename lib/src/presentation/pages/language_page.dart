import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:joblance_firebase/src/common/const.dart';
import 'package:joblance_firebase/src/presentation/bloc/language/language_form_bloc.dart';
import 'package:joblance_firebase/src/presentation/widgets/custom_app_bar.dart';

class LanguagePage extends StatefulWidget {
  const LanguagePage({Key? key}) : super(key: key);

  @override
  State<LanguagePage> createState() => _LanguagePageState();
}

class _LanguagePageState extends State<LanguagePage> {

  @override
  void initState() {
    super.initState();
  }

  String language(String val) {
    switch (val) {
      case 'en':
        return 'English';
      case 'hi':
        return 'हिन्दी';
      case 'id':
        return 'Bahasa Indonesia';
      case 'ja':
        return '日本語';
      case 'ms':
        return 'Bahasa Melayu';
      case 'pt':
        return 'Português';
      case 'zh':
        return '北方話';
      default:
        return 'English';
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BlocBuilder<LanguageFormBloc, LanguageFormState>(
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppBar(
            context,
            title: AppLocalizations.of(context)!.change_language,
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Const.margin),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppLocalizations.of(context)!.language,
                  style: theme.textTheme.headline3,
                ),
                const SizedBox(height: Const.space15),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(Const.radius),
                  ),
                  child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: Const.space15),
                    child: Column(
                      children: state.supportedLocales.map((locale) {
                        return RadioListTile(
                          value: locale,
                          contentPadding: EdgeInsets.zero,
                          activeColor: theme.primaryColor,
                          title: Align(
                            alignment: Alignment.centerLeft,
                            child: Row(
                              children: [
                                Text(
                                  language(locale.languageCode),
                                  style: theme.textTheme.bodyText2,
                                )
                              ],
                            ),
                          ),
                          groupValue: state.selectedLocale,
                          onChanged: (dynamic value) {
                            context
                                .read<LanguageFormBloc>()
                                .add(LanguageFormEvent.selectLanguage(locale));
                            // setState(() {
                            //   _selectedLocale = locale;
                            //   _locale.setLocale(locale);
                            // });
                          },
                        );
                      }).toList(),
                    ),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
