import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:laundry_app/RegistionPage/API/Modelclass.dart';


class UserProvider with ChangeNotifier {
  late User _user;

  User get user => _user;

  Future<void> registerUser(String userName, String email, String password, int phoneNumber) async {
    final url = Uri.parse('https://laundry-app-backend-mwlf.onrender.com/api/register');
    final body = json.encode({
      "userName": userName,
      "email": email,
      "password": password,
      "phoneNumber": '+91$phoneNumber'
    });

    final response = await http.post(url, body: body, headers: {'Content-Type': 'application/json'});

    final responseData = json.decode(response.body);

    if (response.statusCode == 200) {
      _user = User.fromJson(responseData['data']);
      notifyListeners();
    } else {
      throw Exception(responseData['message']);
}
}
}