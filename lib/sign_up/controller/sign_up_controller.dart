import 'dart:convert';

import 'package:adventure_planner/models/m_response.dart';
import 'package:adventure_planner/utils/constants/api_constants.dart';
import 'package:http/http.dart' as http;

class SignUpController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<MResponse> register({
    required String name,
    required String email,
    required String password,
    required String passwordConfirmation,
    int role = 0,
  }) async {
    final url = Uri.parse('${apiUrl}register');

    final response = await http.post(
      url,
      body: {
        'name': name,
        'email': email,
        'password': password,
        'password_confirmation': passwordConfirmation,
        'role': role.toString(),
      },
    );

    return MResponse(
      body: jsonDecode(response.body),
      statusCode: response.statusCode,
    );
  }
}
