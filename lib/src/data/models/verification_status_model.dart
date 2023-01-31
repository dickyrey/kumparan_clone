import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/domain/entities/verification_status.dart';

class VerificationStatusModel extends Equatable {
  const VerificationStatusModel({
    required this.isSetPassword,
    required this.isEmailVerified,
  });

  factory VerificationStatusModel.fromJson(Map<String, dynamic> json) {
    return VerificationStatusModel(
      isSetPassword: json['set_password'] as bool,
      isEmailVerified: json['email_verified'] as bool,
    );
  }

  final bool isSetPassword;
  final bool isEmailVerified;

  VerificationStatus toEntity() {
    return VerificationStatus(
      isSetPassword: isSetPassword,
      isEmailVerified: isEmailVerified,
    );
  }

  @override
  List<Object?> get props => [
        isSetPassword,
        isEmailVerified,
      ];
}
