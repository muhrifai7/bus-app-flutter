import 'package:flutter_application_1/models/profile.dart';
import 'package:http/http.dart' show Client;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  final String baseUrl = "https://apibus.akasaaa.com/public/api";
  Client client = Client();

  Future<List<Profile>?> getProfiles() async {
    Uri url = Uri.parse("$baseUrl/users");
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return profileFromJson(response.body);
    } else {
      return null;
    }
  }

  Future login(String name, String password) async {
    final url = Uri.parse('$baseUrl/login');
    final response = await client.post(url, body: {
      'username': name,
      'password': password,
    });
    if (response.statusCode == 200) {
      // Process the successful response
      final jsonData = loginToJson(response.body);
      print('Parsed response: $jsonData');
      return jsonData;
    } else {
      Map<String, dynamic> result = {
        "status": false,
        "message": "User not found"
      };
      return result;
    }
  }

  void saveSession(String authToken) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', authToken);
  }

  Future<String?> getSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? authToken = prefs.getString('token');
    return authToken;
  }

  Future<bool> createProfile(Profile data) async {
    final response = await client.post(
      "$baseUrl/profile" as Uri,
      headers: {"content-type": "application/json"},
      body: profileToJson(data),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }

  void clearSession() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
  }

  Future<bool> updateProfile(Profile data) async {
    final response = await client.put(
      "$baseUrl/api/profile/${data.id}" as Uri,
      headers: {"content-type": "application/json"},
      body: profileToJson(data),
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> deleteProfile(int id) async {
    final response = await client.delete(
      "$baseUrl/api/profile/$id" as Uri,
      headers: {"content-type": "application/json"},
    );
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  void dispose() {}
}
