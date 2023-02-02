import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:kumparan_clone/src/common/const.dart';
import 'package:kumparan_clone/src/common/enums.dart';
import 'package:kumparan_clone/src/domain/entities/user.dart';
import 'package:kumparan_clone/src/domain/usecases/user/update_user_profile.dart';
import 'package:kumparan_clone/src/utilities/image_cropper_utils.dart';

part 'user_form_bloc.freezed.dart';
part 'user_form_event.dart';
part 'user_form_state.dart';

class UserFormBloc extends Bloc<UserFormEvent, UserFormState> {
  UserFormBloc(this._update) : super(UserFormState.initial()) {
    on<UserFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(UserFormState.initial());
        },
        initialize: (event) {
          emit(
            state.copyWith(
              state: RequestState.empty,
              message: '',
              isSubmitting: false,
              isShowErrorMessages: false,
              name: event.user.name,
              imageUrl: event.user.photo,
              imageFile: null,
            ),
          );
        },
        nameOnChanged: (e) {
          emit(
            state.copyWith(
              name: e.name,
              isSubmitting: false,
            ),
          );
        },
        pickImage: (e) async {
          final pickedImage = await ImagePicker().pickImage(
            source: e.source,
          );
          if (pickedImage != null) {
            final croppedImage = await ImageCropperUtils.cropImage(
              pickedImage.path,
            );
            if (croppedImage != null) {
              emit(state.copyWith(imageFile: File(croppedImage.path)));
            }
          }
        },
        saveChanges: (_) async {
          emit(
            state.copyWith(
              state: RequestState.loading,
              isSubmitting: true,
            ),
          );
          final result = await _update.execute(
            name: state.name,
            imageFile: state.imageFile,
          );
          result.fold(
            (f) => emit(
              state.copyWith(
                state: RequestState.error,
                message: f.message,
                isSubmitting: false,
                isShowErrorMessages: true,
              ),
            ),
            (_) => emit(
              state.copyWith(
                state: RequestState.loaded,
                isSubmitting: false,
              ),
            ),
          );
        },
      );
    });
  }
  final UpdateUserProfile _update;
}
