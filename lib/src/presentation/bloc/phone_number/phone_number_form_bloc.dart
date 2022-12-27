import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kumparan_clone/src/common/enums.dart';

part 'phone_number_form_event.dart';
part 'phone_number_form_state.dart';
part 'phone_number_form_bloc.freezed.dart';

class PhoneNumberFormBloc
    extends Bloc<PhoneNumberFormEvent, PhoneNumberFormState> {
  PhoneNumberFormBloc() : super(PhoneNumberFormState.initial()) {
    on<PhoneNumberFormEvent>((event, emit) async {
      await event.map(
        initial: (_) {
          emit(
            state.copyWith(
              result: RequestState.empty,
              phoneNumber: '',
              isShowErrorMessages: false,
              isSubmitting: false,
            ),
          );
        },
        phoneNumberOnChanged: (e) {
          emit(
            state.copyWith(
              phoneNumber: e.phoneNumber,
              isShowErrorMessages: false,
            ),
          );
        },
        sendPressed: (_) async {
          emit(
            state.copyWith(
              isSubmitting: true,
              isShowErrorMessages: false,
            ),
          );
          await Future.delayed(
            const Duration(seconds: 3),
            () {
              emit(
                state.copyWith(
                  phoneNumber: '',
                  isSubmitting: false,
                  result: RequestState.loaded,
                ),
              );
            },
          );
        },
      );
    });
  }
}
