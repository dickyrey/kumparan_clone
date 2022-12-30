import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/utilities/image_cropper_utils.dart';

part 'user_form_event.dart';
part 'user_form_state.dart';
part 'user_form_bloc.freezed.dart';

class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  UserFormBloc() : super(UserFormState.initial()) {
    on<UserFormEvent>((event, emit) async {
      await event.map(
        initial: (e) {
          emit(UserFormState.initial());
        },
        nameOnChanged: (e) {
          emit(state.copyWith(name: e.name));
        },
        bioOnChanged: (e) {
          emit(state.copyWith(name: e.bio));
        },
        webOnChanged: (e) {
          emit(state.copyWith(name: e.web));
        },
        birthdateOnChanged: (e) async {
          final picked = await showDatePicker(
            context: e.context,
            initialDate: DateTime.now(),
            firstDate: DateTime(1900),
            lastDate: DateTime.now(),
          );
          if (picked != null) {
            final dateFormat = DateFormat('MMM dd, yyyy').format(picked);
            emit(state.copyWith(birthdate: dateFormat));
          }
        },
        genderOnChanged: (e) {
          emit(state.copyWith(gender: e.genderId));
        },
        pickImage: (e) async {
          var pickedImage = await ImagePicker().pickImage(
            source: e.source,
          );
          if (pickedImage != null) {
            final croppedImage =
                await ImageCropperUtils.cropImage(pickedImage.path);
            if (croppedImage != null) {
              emit(state.copyWith(imageFile: File(croppedImage.path)));
            }
          }
        },
      );
    });
  }
}
