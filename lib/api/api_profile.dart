import 'package:flutter_application_1/models/profile.dart';
import 'package:http/http.dart' show Client;

class ApiService {
  final String baseUrl = "https://apibus.akasaaa.com/public/api";
  Client client = Client();

  Future<List<Profile>?> getProfiles() async {
    Uri url = Uri.parse("$baseUrl/api/users");
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return profileFromJson(response.body);
    } else {
      return null;
    }
  }

  Future login(String name, String password) async {
    final url = Uri.parse('https://apibus.akasaaa.com/public/api/login');
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
      // Handle the error response
      print('Error: ${response.reasonPhrase}');
      return response.body;
    }
  }

  Future<bool> createProfile(Profile data) async {
    final response = await client.post(
      "$baseUrl/api/profile" as Uri,
      headers: {"content-type": "application/json"},
      body: profileToJson(data),
    );
    if (response.statusCode == 201) {
      return true;
    } else {
      return false;
    }
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
