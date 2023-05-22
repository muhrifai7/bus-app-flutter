import 'package:flutter_application_1/models/tiket.dart';
import 'package:http/http.dart' show Client;

class ApiService {
  // final String baseUrl = "https://apibus.akasaaa.com/public/api";
  Client client = Client();
  // Set the headers with the Bearer token
  final headers = {
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2FwaWJ1cy5ha2FzYWFhLmNvbS9wdWJsaWMvYXBpL2xvZ2luIiwiaWF0IjoxNjg0NzI3NjgwLCJleHAiOjE2ODQ5MDA0ODAsIm5iZiI6MTY4NDcyNzY4MCwianRpIjoidjU4ZEJzc01TNlduc2tFWiIsInN1YiI6IjUwIiwicHJ2IjoiMjNiZDVjODk0OWY2MDBhZGIzOWU3MDFjNDAwODcyZGI3YTU5NzZmNyJ9.-UHKRLVJp8-CnCsTAPaS77WMDi8JkSB1BAle-vPlWXY',
  };

  Future<List<Tiket>?> getTiket() async {
    final corsHeaders = {
      'Access-Control-Allow-Origin': '*',
      'Access-Control-Allow-Methods': 'GET, POST, PUT, DELETE, OPTIONS',
      'Access-Control-Allow-Headers': 'Origin, Content-Type, X-Auth-Token',
    };

    Uri url = Uri.parse(
        "https://apibus.akasaaa.com/public/api/tampilpenjualantiket?tgl_transaksi=2023-05-05&id_personil=40&status=N");
    final response =
        await client.get(url, headers: {...headers, ...corsHeaders});
    print(response.body);
    if (response.statusCode == 200) {
      return tiketFromJson(response.body);
    } else {
      return null;
    }
  }
}
