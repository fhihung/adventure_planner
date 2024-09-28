import 'dart:convert';

import 'package:adventure_planner/models/m_response.dart';
import 'package:adventure_planner/utils/constants/api_constants.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

class PlanGenerationController {
  final String apiUrl = APIConstants.apiBaseUrl;

  Future<MResponse> suggest({
    String? currentLocation,
    String? budget,
    List<String>? location,
    String? numPeople,
    int? duration,
    List<String>? type,
  }) async {
    final url = Uri.parse('${apiUrl}tour-suggestion');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json', // Set content type to JSON
      },
      body: jsonEncode({
        'location': location.toString(),
        'numPeople': numPeople,
        'duration': duration,
        'budget': budget,
        'currentLocation': currentLocation,
        'type': type.toString(),
        'model': 'gemini',
      }),
    );
    if (kDebugMode) {
      print(jsonDecode(response.body));
    }
    return MResponse(
      body: jsonDecode(response.body),
      statusCode: response.statusCode,
    );
  }
}
