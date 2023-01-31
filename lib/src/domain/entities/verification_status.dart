import 'package:equatable/equatable.dart';

class VerificationStatus extends Equatable {
  const VerificationStatus({
    required this.isSetPassword,
    required this.isEmailVerified,
  });

  final bool isSetPassword;
  final bool isEmailVerified;

  @override
  List<Object?> get props => [
        isSetPassword,
        isEmailVerified,
      ];
}
