import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laundry_app/Loginpage/Login%20Api/LoginModel.dart';


class LoginProvider with ChangeNotifier {
  late LoginResponse _user;

  LoginResponse get user => _user;

  Future<void> LoginUser( String email, String password) async {
    final url = Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/login');
    final body = json.encode({
      "email": email,
      "password": password,
    });

    final response = await http.post(url, body: body, headers: {'Content-Type': 'application/json'});

    final responseData = json.decode(response.body);
    print(response.body);

    if (response.statusCode == 200) {
      _user = LoginResponse.fromJson(responseData);
      notifyListeners();
    } else {
      throw Exception(responseData['message']);
}
}
}