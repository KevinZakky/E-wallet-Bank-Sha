import 'dart:convert';

import 'package:ewallet_project_app/shared/shared_value.dart';
import 'package:http/http.dart' as http;

class AuthServices {
  Future<bool> checkEmail(String email) async {
    try {
      final res = await http.post(
        Uri.parse('$baseUrl/is-email-exist'),
        body: {
          'email': email,
        },
      );
      if (res.statusCode == 200) {
        return jsonDecode(res.body)['is-email-exist'];
      } else {
        return jsonDecode(res.body)['errors'];
      }
    } catch (e) {
      rethrow;
    }
  }
}
