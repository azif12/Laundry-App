class LoginResponse {
  final String status;
  final String message;
  final String id;
  final String otp;

  LoginResponse({
    required this.status,
    required this.message,
    required this.id,
    required this.otp,
  });

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      status: json['status'],
      message: json['message'],
      id: json['id'],
      otp: json['otp'],
    );
  }
}
