import "package:http/http.dart" as http;
import "dart:convert";

class HttpStateFull {
  late String id, name, job, createdAt;

  HttpStateFull(
      {required this.id,
      required this.name,
      required this.createdAt,
      required this.job});

  static Future<HttpStateFull> callApi(String name, String job) async {
    Uri url = Uri.parse("https://reqres.in/api/users");
    var response = await http.post(url, body: {"name": name, "job": job});
    var data = json.decode(response.body);
    if (response.statusCode == 201) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      return HttpStateFull(
          createdAt: data["createdAt"],
          id: data["id"],
          name: data["name"],
          job: data["job"]);
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create user.');
    }
  }
}
