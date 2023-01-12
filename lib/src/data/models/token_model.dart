class TokenModel {
  TokenModel({
    required this.token,
  });

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      token: json['data'] as String,
    );
  }

  final String token;
}
