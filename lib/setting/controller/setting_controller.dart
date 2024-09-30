import 'dart:convert';

import 'package:adventure_planner/models/m_response.dart';
import 'package:adventure_planner/utils/constants/api_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class SettingController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<MResponse> logOut(String token) async {
    final url = Uri.parse('${apiUrl}logout');
    try {
      final response = await http.post(
        url,
        headers: {
          'Authorization': 'Bearer $token',
        },
      );
      if (response.statusCode == 200) {
        return MResponse(
          statusCode: response.statusCode,
          body: jsonDecode(response.body),
        );
      } else {
        return MResponse(
          statusCode: response.statusCode,
          body: jsonDecode(response.body),
        );
      }
    } catch (e) {
      if (kDebugMode) {
        print('Error occurred: $e');
      }
      return MResponse(
        statusCode: 500,
        body: {'message': 'Internal server error'},
      );
    }
  }
}
