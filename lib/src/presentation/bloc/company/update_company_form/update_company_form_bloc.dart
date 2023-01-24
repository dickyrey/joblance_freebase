import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/usecases/company/update_company_profile.dart';
import 'package:joblance_firebase/src/utilities/image_cropper_utils.dart';

part 'update_company_form_event.dart';
part 'update_company_form_state.dart';
part 'update_company_form_bloc.freezed.dart';

class UpdateCompanyFormBloc
    extends Bloc<UpdateCompanyFormEvent, UpdateCompanyFormState> {
  UpdateCompanyFormBloc(this._update) : super(UpdateCompanyFormState.init()) {
    on<UpdateCompanyFormEvent>((event, emit) async {
      await event.map(
        pickImage: (e) async {
          final pickedImage = await ImagePicker().pickImage(source: e.source);
          if (pickedImage != null) {
            final croppedImage = await ImageCropperUtils.cropImage(
              pickedImage.path,
            );
            if (croppedImage != null) {
              emit(state.copyWith(imageFile: File(croppedImage.path)));
            }
          }
        },
      );
    });
  }
  final UpdateCompanyProfile _update;
}
