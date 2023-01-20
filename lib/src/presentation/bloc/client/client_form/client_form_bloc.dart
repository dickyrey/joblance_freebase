import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:joblance_firebase/src/common/enums.dart';
import 'package:joblance_firebase/src/domain/entities/client.dart';
import 'package:joblance_firebase/src/utilities/image_cropper_utils.dart';

part 'client_form_bloc.freezed.dart';
part 'client_form_event.dart';
part 'client_form_state.dart';

class ClientFormBloc extends Bloc<ClientFormEvent, ClientFormState> {
  ClientFormBloc() : super(ClientFormState.initial()) {
    on<ClientFormEvent>((event, emit) async {
      await event.map(
        init: (event) {
          emit(
            state.copyWith(
              state: RequestState.empty,
              name: event.client.name,
              position: event.client.position,
              address: event.client.address,
              phone: event.client.phone,
              email: event.client.email,
              imageFile: null,
              birthdate: DateFormat('MMM dd, yyyy').format(
                event.client.birthdate,
              ),
            ),
          );
        },
        nameOnChanged: (event) {
          emit(state.copyWith(name: event.name));
        },
        positionOnChanged: (event) {
          emit(state.copyWith(position: event.position));
        },
        addressOnChanged: (event) {
          emit(state.copyWith(address: event.address));
        },
        phoneOnChanged: (event) {
          emit(state.copyWith(phone: event.phone));
        },
        birthdayOnChanged: (event) async {
          final picked = await showDatePicker(
            context: event.context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (picked != null) {
            final birthdayDate = DateFormat('MMM dd, yyyy').format(picked);
            emit(state.copyWith(birthdate: birthdayDate));
          }
        },
        pickImage: (event) async {
          final pickedImage = await ImagePicker().pickImage(
            source: event.source,
          );
          if (pickedImage != null) {
            final croppedImage = await ImageCropperUtils.cropImage(pickedImage.path);
            if (croppedImage != null) {
              emit(state.copyWith(imageFile: File(croppedImage.path)));
            }
          }
        },
        saveChanges: (_) {},
      );
    });
  }
}
