import 'dart:convert';
import 'package:http/http.dart' as http;
import '../utils/constants.dart';

class ApiService {
  static String token = "";

  static Future<bool> login(String email, String password) async {
    final res = await http.post(
      Uri.parse("$BASE_URL/auth/login"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password
      }),
    );

    if (res.statusCode == 200) {
      token = jsonDecode(res.body)["token"];
      return true;
    }
    return false;
  }

  static Future<void> punchIn(String location) async {
    await http.post(
      Uri.parse("$BASE_URL/attendance/punch-in"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": token
      },
      body: jsonEncode({"location": location}),
    );
  }

  static Future<void> punchOut() async {
    await http.post(
      Uri.parse("$BASE_URL/attendance/punch-out"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": token
      },
    );
  }

  static Future<void> applyLeave(
      String from, String to, String reason, String managerId) async {
    await http.post(
      Uri.parse("$BASE_URL/leave/apply"),
      headers: {
        "Content-Type": "application/json",
        "Authorization": token
      },
      body: jsonEncode({
        "from": from,
        "to": to,
        "reason": reason,
        "managerId": managerId
      }),
    );
  }
}
