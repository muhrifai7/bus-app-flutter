import 'package:flutter_application_1/models/profile.dart';
import 'package:http/http.dart' show Client;

class ApiAddress {
  final String baseUrl = "https://reqres.in";
  Client client = Client();

  var data = [
    {
      "id": "1101",
      "province_id": "11",
      "name": "KABUPATEN SIMEULUE",
      "alt_name": "KABUPATEN SIMEULUE",
      "latitude": 2.61667,
      "longitude": 96.08333
    },
    {
      "id": "1102",
      "province_id": "11",
      "name": "KABUPATEN ACEH SINGKIL",
      "alt_name": "KABUPATEN ACEH SINGKIL",
      "latitude": 2.41667,
      "longitude": 97.91667
    },
    {
      "id": "1103",
      "province_id": "11",
      "name": "KABUPATEN ACEH SELATAN",
      "alt_name": "KABUPATEN ACEH SELATAN",
      "latitude": 3.16667,
      "longitude": 97.41667
    },
    {
      "id": "1104",
      "province_id": "11",
      "name": "KABUPATEN ACEH TENGGARA",
      "alt_name": "KABUPATEN ACEH TENGGARA",
      "latitude": 3.36667,
      "longitude": 97.7
    },
    {
      "id": "1105",
      "province_id": "11",
      "name": "KABUPATEN ACEH TIMUR",
      "alt_name": "KABUPATEN ACEH TIMUR",
      "latitude": 4.63333,
      "longitude": 97.63333
    },
    {
      "id": "1106",
      "province_id": "11",
      "name": "KABUPATEN ACEH TENGAH",
      "alt_name": "KABUPATEN ACEH TENGAH",
      "latitude": 4.51,
      "longitude": 96.855
    },
    {
      "id": "1107",
      "province_id": "11",
      "name": "KABUPATEN ACEH BARAT",
      "alt_name": "KABUPATEN ACEH BARAT",
      "latitude": 4.45,
      "longitude": 96.16667
    },
    {
      "id": "1108",
      "province_id": "11",
      "name": "KABUPATEN ACEH BESAR",
      "alt_name": "KABUPATEN ACEH BESAR",
      "latitude": 5.38333,
      "longitude": 95.51667
    },
    {
      "id": "1109",
      "province_id": "11",
      "name": "KABUPATEN PIDIE",
      "alt_name": "KABUPATEN PIDIE",
      "latitude": 5.08,
      "longitude": 96.11
    },
    {
      "id": "1110",
      "province_id": "11",
      "name": "KABUPATEN BIREUEN",
      "alt_name": "KABUPATEN BIREUEN",
      "latitude": 5.08333,
      "longitude": 96.58333
    },
    {
      "id": "1111",
      "province_id": "11",
      "name": "KABUPATEN ACEH UTARA",
      "alt_name": "KABUPATEN ACEH UTARA",
      "latitude": 4.97,
      "longitude": 97.14
    },
    {
      "id": "1112",
      "province_id": "11",
      "name": "KABUPATEN ACEH BARAT DAYA",
      "alt_name": "KABUPATEN ACEH BARAT DAYA",
      "latitude": 3.83333,
      "longitude": 96.88333
    },
    {
      "id": "1113",
      "province_id": "11",
      "name": "KABUPATEN GAYO LUES",
      "alt_name": "KABUPATEN GAYO LUES",
      "latitude": 3.95,
      "longitude": 97.39
    },
    {
      "id": "1114",
      "province_id": "11",
      "name": "KABUPATEN ACEH TAMIANG",
      "alt_name": "KABUPATEN ACEH TAMIANG",
      "latitude": 4.25,
      "longitude": 97.96667
    },
    {
      "id": "1115",
      "province_id": "11",
      "name": "KABUPATEN NAGAN RAYA",
      "alt_name": "KABUPATEN NAGAN RAYA",
      "latitude": 4.16667,
      "longitude": 96.51667
    },
    {
      "id": "1116",
      "province_id": "11",
      "name": "KABUPATEN ACEH JAYA",
      "alt_name": "KABUPATEN ACEH JAYA",
      "latitude": 4.86,
      "longitude": 95.64
    },
    {
      "id": "1117",
      "province_id": "11",
      "name": "KABUPATEN BENER MERIAH",
      "alt_name": "KABUPATEN BENER MERIAH",
      "latitude": 4.73015,
      "longitude": 96.86156
    },
    {
      "id": "1118",
      "province_id": "11",
      "name": "KABUPATEN PIDIE JAYA",
      "alt_name": "KABUPATEN PIDIE JAYA",
      "latitude": 5.15,
      "longitude": 96.21667
    },
    {
      "id": "1171",
      "province_id": "11",
      "name": "KOTA BANDA ACEH",
      "alt_name": "KOTA BANDA ACEH",
      "latitude": 5.54167,
      "longitude": 95.33333
    },
    {
      "id": "1172",
      "province_id": "11",
      "name": "KOTA SABANG",
      "alt_name": "KOTA SABANG",
      "latitude": 5.82164,
      "longitude": 95.31086
    },
    {
      "id": "1173",
      "province_id": "11",
      "name": "KOTA LANGSA",
      "alt_name": "KOTA LANGSA",
      "latitude": 4.47,
      "longitude": 97.93
    },
    {
      "id": "1174",
      "province_id": "11",
      "name": "KOTA LHOKSEUMAWE",
      "alt_name": "KOTA LHOKSEUMAWE",
      "latitude": 5.13333,
      "longitude": 97.06667
    },
    {
      "id": "1175",
      "province_id": "11",
      "name": "KOTA SUBULUSSALAM",
      "alt_name": "KOTA SUBULUSSALAM",
      "latitude": 2.75,
      "longitude": 97.93333
    },
    {
      "id": "1201",
      "province_id": "12",
      "name": "KABUPATEN NIAS",
      "alt_name": "KABUPATEN NIAS",
      "latitude": 1.03333,
      "longitude": 97.76667
    },
    {
      "id": "1202",
      "province_id": "12",
      "name": "KABUPATEN MANDAILING NATAL",
      "alt_name": "KABUPATEN MANDAILING NATAL",
      "latitude": 0.78378,
      "longitude": 99.25495
    },
    {
      "id": "1203",
      "province_id": "12",
      "name": "KABUPATEN TAPANULI SELATAN",
      "alt_name": "KABUPATEN TAPANULI SELATAN",
      "latitude": 1.51667,
      "longitude": 99.25
    },
    {
      "id": "1204",
      "province_id": "12",
      "name": "KABUPATEN TAPANULI TENGAH",
      "alt_name": "KABUPATEN TAPANULI TENGAH",
      "latitude": 1.9,
      "longitude": 98.66667
    },
    {
      "id": "1205",
      "province_id": "12",
      "name": "KABUPATEN TAPANULI UTARA",
      "alt_name": "KABUPATEN TAPANULI UTARA",
      "latitude": 2.0028,
      "longitude": 99.0707
    },
    {
      "id": "1206",
      "province_id": "12",
      "name": "KABUPATEN TOBA SAMOSIR",
      "alt_name": "KABUPATEN TOBA SAMOSIR",
      "latitude": 2.39793,
      "longitude": 99.21678
    },
    {
      "id": "1207",
      "province_id": "12",
      "name": "KABUPATEN LABUHAN BATU",
      "alt_name": "KABUPATEN LABUHAN BATU",
      "latitude": 2.26667,
      "longitude": 100.1
    },
    {
      "id": "1208",
      "province_id": "12",
      "name": "KABUPATEN ASAHAN",
      "alt_name": "KABUPATEN ASAHAN",
      "latitude": 2.78333,
      "longitude": 99.55
    },
    {
      "id": "1209",
      "province_id": "12",
      "name": "KABUPATEN SIMALUNGUN",
      "alt_name": "KABUPATEN SIMALUNGUN",
      "latitude": 2.9,
      "longitude": 99
    },
    {
      "id": "1210",
      "province_id": "12",
      "name": "KABUPATEN DAIRI",
      "alt_name": "KABUPATEN DAIRI",
      "latitude": 2.86667,
      "longitude": 98.23333
    },
    {
      "id": "1211",
      "province_id": "12",
      "name": "KABUPATEN KARO",
      "alt_name": "KABUPATEN KARO",
      "latitude": 3.11667,
      "longitude": 98.3
    },
    {
      "id": "1212",
      "province_id": "12",
      "name": "KABUPATEN DELI SERDANG",
      "alt_name": "KABUPATEN DELI SERDANG",
      "latitude": 3.41667,
      "longitude": 98.66667
    },
    {
      "id": "1213",
      "province_id": "12",
      "name": "KABUPATEN LANGKAT",
      "alt_name": "KABUPATEN LANGKAT",
      "latitude": 3.71667,
      "longitude": 98.21667
    },
    {
      "id": "1214",
      "province_id": "12",
      "name": "KABUPATEN NIAS SELATAN",
      "alt_name": "KABUPATEN NIAS SELATAN",
      "latitude": 0.77,
      "longitude": 97.75
    },
    {
      "id": "1215",
      "province_id": "12",
      "name": "KABUPATEN HUMBANG HASUNDUTAN",
      "alt_name": "KABUPATEN HUMBANG HASUNDUTAN",
      "latitude": 2.26551,
      "longitude": 98.50376
    },
    {
      "id": "1216",
      "province_id": "12",
      "name": "KABUPATEN PAKPAK BHARAT",
      "alt_name": "KABUPATEN PAKPAK BHARAT",
      "latitude": 2.56667,
      "longitude": 98.28333
    },
    {
      "id": "1217",
      "province_id": "12",
      "name": "KABUPATEN SAMOSIR",
      "alt_name": "KABUPATEN SAMOSIR",
      "latitude": 2.64025,
      "longitude": 98.71525
    },
    {
      "id": "1218",
      "province_id": "12",
      "name": "KABUPATEN SERDANG BEDAGAI",
      "alt_name": "KABUPATEN SERDANG BEDAGAI",
      "latitude": 3.36667,
      "longitude": 99.03333
    },
    {
      "id": "1219",
      "province_id": "12",
      "name": "KABUPATEN BATU BARA",
      "alt_name": "KABUPATEN BATU BARA",
      "latitude": 3.16166,
      "longitude": 99.52652
    },
    {
      "id": "1220",
      "province_id": "12",
      "name": "KABUPATEN PADANG LAWAS UTARA",
      "alt_name": "KABUPATEN PADANG LAWAS UTARA",
      "latitude": 1.46011,
      "longitude": 99.67346
    },
    {
      "id": "1221",
      "province_id": "12",
      "name": "KABUPATEN PADANG LAWAS",
      "alt_name": "KABUPATEN PADANG LAWAS",
      "latitude": 1.44684,
      "longitude": 99.99207
    },
    {
      "id": "1222",
      "province_id": "12",
      "name": "KABUPATEN LABUHAN BATU SELATAN",
      "alt_name": "KABUPATEN LABUHAN BATU SELATAN",
      "latitude": 1.983,
      "longitude": 100.0976
    },
    {
      "id": "1223",
      "province_id": "12",
      "name": "KABUPATEN LABUHAN BATU UTARA",
      "alt_name": "KABUPATEN LABUHAN BATU UTARA",
      "latitude": 2.33349,
      "longitude": 99.63776
    },
    {
      "id": "1224",
      "province_id": "12",
      "name": "KABUPATEN NIAS UTARA",
      "alt_name": "KABUPATEN NIAS UTARA",
      "latitude": 1.33037,
      "longitude": 97.31964
    },
    {
      "id": "1225",
      "province_id": "12",
      "name": "KABUPATEN NIAS BARAT",
      "alt_name": "KABUPATEN NIAS BARAT",
      "latitude": 1.05966,
      "longitude": 97.58606
    },
    {
      "id": "1271",
      "province_id": "12",
      "name": "KOTA SIBOLGA",
      "alt_name": "KOTA SIBOLGA",
      "latitude": 1.73333,
      "longitude": 98.8
    },
    {
      "id": "1272",
      "province_id": "12",
      "name": "KOTA TANJUNG BALAI",
      "alt_name": "KOTA TANJUNG BALAI",
      "latitude": 2.95833,
      "longitude": 99.79167
    },
    {
      "id": "1273",
      "province_id": "12",
      "name": "KOTA PEMATANG SIANTAR",
      "alt_name": "KOTA PEMATANG SIANTAR",
      "latitude": 2.96667,
      "longitude": 99.05
    },
    {
      "id": "1274",
      "province_id": "12",
      "name": "KOTA TEBING TINGGI",
      "alt_name": "KOTA TEBING TINGGI",
      "latitude": 3.325,
      "longitude": 99.14167
    },
    {
      "id": "1275",
      "province_id": "12",
      "name": "KOTA MEDAN",
      "alt_name": "KOTA MEDAN",
      "latitude": 3.65,
      "longitude": 98.66667
    },
    {
      "id": "1276",
      "province_id": "12",
      "name": "KOTA BINJAI",
      "alt_name": "KOTA BINJAI",
      "latitude": 3.8,
      "longitude": 108.23333
    },
    {
      "id": "1277",
      "province_id": "12",
      "name": "KOTA PADANG SIDEMPUAN",
      "alt_name": "KOTA PADANG SIDEMPUAN",
      "latitude": 1.37375,
      "longitude": 99.26843
    },
    {
      "id": "1278",
      "province_id": "12",
      "name": "KOTA GUNUNGSITOLI",
      "alt_name": "KOTA GUNUNGSITOLI",
      "latitude": 1.32731,
      "longitude": 97.55018
    },
    {
      "id": "1301",
      "province_id": "13",
      "name": "KABUPATEN KEPULAUAN MENTAWAI",
      "alt_name": "KABUPATEN KEPULAUAN MENTAWAI",
      "latitude": 1.98917,
      "longitude": 99.51889
    },
    {
      "id": "1302",
      "province_id": "13",
      "name": "KABUPATEN PESISIR SELATAN",
      "alt_name": "KABUPATEN PESISIR SELATAN",
      "latitude": -1.58333,
      "longitude": 100.85
    },
    {
      "id": "1303",
      "province_id": "13",
      "name": "KABUPATEN SOLOK",
      "alt_name": "KABUPATEN SOLOK",
      "latitude": -0.96667,
      "longitude": 100.81667
    },
    {
      "id": "1304",
      "province_id": "13",
      "name": "KABUPATEN SIJUNJUNG",
      "alt_name": "KABUPATEN SIJUNJUNG",
      "latitude": -1.1827,
      "longitude": 101.6056
    },
    {
      "id": "1305",
      "province_id": "13",
      "name": "KABUPATEN TANAH DATAR",
      "alt_name": "KABUPATEN TANAH DATAR",
      "latitude": -0.4555,
      "longitude": 100.5771
    },
    {
      "id": "1306",
      "province_id": "13",
      "name": "KABUPATEN PADANG PARIAMAN",
      "alt_name": "KABUPATEN PADANG PARIAMAN",
      "latitude": -0.6,
      "longitude": 100.28333
    },
    {
      "id": "1307",
      "province_id": "13",
      "name": "KABUPATEN AGAM",
      "alt_name": "KABUPATEN AGAM",
      "latitude": -0.25,
      "longitude": 100.16667
    },
    {
      "id": "1308",
      "province_id": "13",
      "name": "KABUPATEN LIMA PULUH KOTA",
      "alt_name": "KABUPATEN LIMA PULUH KOTA",
      "latitude": -0.0168,
      "longitude": 100.5872
    },
    {
      "id": "1309",
      "province_id": "13",
      "name": "KABUPATEN PASAMAN",
      "alt_name": "KABUPATEN PASAMAN",
      "latitude": 0.42503,
      "longitude": 99.94606
    },
    {
      "id": "1310",
      "province_id": "13",
      "name": "KABUPATEN SOLOK SELATAN",
      "alt_name": "KABUPATEN SOLOK SELATAN",
      "latitude": -1.23333,
      "longitude": 101.417
    },
    {
      "id": "1311",
      "province_id": "13",
      "name": "KABUPATEN DHARMASRAYA",
      "alt_name": "KABUPATEN DHARMASRAYA",
      "latitude": -1.05,
      "longitude": 101.367
    },
    {
      "id": "1312",
      "province_id": "13",
      "name": "KABUPATEN PASAMAN BARAT",
      "alt_name": "KABUPATEN PASAMAN BARAT",
      "latitude": 0.28152,
      "longitude": 99.51965
    },
    {
      "id": "1371",
      "province_id": "13",
      "name": "KOTA PADANG",
      "alt_name": "KOTA PADANG",
      "latitude": -0.98333,
      "longitude": 100.45
    },
    {
      "id": "1372",
      "province_id": "13",
      "name": "KOTA SOLOK",
      "alt_name": "KOTA SOLOK",
      "latitude": -0.76667,
      "longitude": 100.61667
    },
    {
      "id": "1373",
      "province_id": "13",
      "name": "KOTA SAWAH LUNTO",
      "alt_name": "KOTA SAWAH LUNTO",
      "latitude": -0.6,
      "longitude": 100.75
    }
  ];

  Future<List<Profile>?> getCities() async {
    Uri url = Uri.parse("$baseUrl/api/users");
    final response = await client.get(url);
    if (response.statusCode == 200) {
      return profileFromJson(data.toString());
    } else {
      return null;
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
