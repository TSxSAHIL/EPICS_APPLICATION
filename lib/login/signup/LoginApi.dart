import 'dart:convert';
import 'package:http/http.dart' as http;
class LoginApi {
  static Future<String?> login(String username, String password) async {
    const baseUrl = 'https://example.com/api';
    final url = Uri.parse('$baseUrl/login');
    final response = await http.post(
      url,
      body: {
        'username': username,
        'password': password,
      },
    );
    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final token = data['token'] as String?;
      return token;
    } else {
      return null;
    }
  }
}
