import 'dart:async';
import 'dart:convert';

import 'package:adventure_planner/models/m_popular_suggestion.dart';
import 'package:adventure_planner/models/m_user.dart';
import 'package:adventure_planner/utils/constants/api_constants.dart';
import 'package:http/http.dart' as http;

class HomeController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<MUser> getUser(String token) async {
    final url = Uri.parse('${apiUrl}user');
    final response = await http.get(
      headers: {
        'Authorization': 'Bearer $token',
      },
      url,
    );
    if (response.statusCode == 200) {
      return MUser.fromJson(jsonDecode(response.body)['user'] as Map<String, dynamic>);
    } else {
      throw Exception('Failed to load user');
    }
  }

  Future<List<MPopularSuggestion>> getPopularSuggestion() async {
    final url = Uri.parse('${apiUrl}popular-suggestions');
    final response = await http.get(
      headers: {
        'Content-Type': 'application/json',
      },
      url,
    );
    if (response.statusCode == 200) {
      final jsonResponse = json.decode(response.body) as List<dynamic>;
      return jsonResponse
          .map(
            (transactionGroup) => MPopularSuggestion.fromJson(transactionGroup as Map<String, dynamic>),
          )
          .toList();
    } else {
      throw Exception('Failed to load popular suggestions');
    }
  }
}
