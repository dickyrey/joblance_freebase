import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:joblance_firebase/l10n/l10n.dart';
import 'package:joblance_firebase/src/common/enums.dart';

part 'language_form_bloc.freezed.dart';
part 'language_form_event.dart';
part 'language_form_state.dart';

class LanguageFormBloc extends Bloc<LanguageFormEvent, LanguageFormState> {
  LanguageFormBloc() : super(LanguageFormState.initial()) {
    on<LanguageFormEvent>((event, emit) {
      event.map(
        selectLanguage: (event) {
          emit(
            state.copyWith(
              selectedLocale: event.locale,
            ),
          );
        },
      );
    });
  }
}
