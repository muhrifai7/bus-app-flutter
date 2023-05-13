import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/api_profile.dart';

import '../models/profile.dart';
import '../helper/Constant.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  List<Profile>? profiles;
  List<Map<String, dynamic>> chartMasters = [];
  var isLoading = false;

  @override
  void initState() {
    super.initState();
    print("initstate");
    getData();
    _loadChartMasters();
  }

  Future<void> _loadChartMasters() async {
    // final listResponse = await SqlHelper.getAllChartMasters();
    setState(() {
      chartMasters = [
        {
          'name': 'John Doe',
          'position': 'Supir',
          'vehicle': "1-N 7037 UR",
          'trayek': "Jember - Surabaya",
          'crew_bus':
              "MUHAMMAD ASHARI(Kondektur),AHMAD SYAFRIL SUGIANTO(Supir Bus)",
        },
      ];
    });
  }

  getData() async {
    ApiService apiService = ApiService();
    profiles = await apiService.getProfiles();
    if (profiles != null) {
      setState(() {
        isLoading = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Beranda'),
          backgroundColor: Color(int.parse('0xFF${Constant.prime_color}')),
        ),
        body: Visibility(
            visible: isLoading,
            replacement: const Center(
              child: CircularProgressIndicator(),
            ),
            child: Column(children: <Widget>[
              Container(
                margin: const EdgeInsets.only(bottom: 5, top: 5),
                child: const Text(
                  "PT. ANDRY FEBIOLA TRANSPORTASI",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(31, 17, 9, 9)),
                ),
              ),
              const CircleAvatar(
                radius: 50, // Set the radius of the circle
                backgroundImage: AssetImage(
                    'assets/images/logo.png'), // Set the background image
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  chartMasters[0]["name"],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 17, 16, 16)),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 5, top: 5),
                child: Text(
                  chartMasters[0]["position"],
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Kendaraan",
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Add some space between the elements
                        Text(
                          chartMasters[0]["vehicle"],
                          style: const TextStyle(
                            color: Color.fromARGB(255, 49, 47, 47),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "trayek",
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Add some space between the elements
                        Text(
                          chartMasters[0]["trayek"],
                          style: const TextStyle(
                            color: Color.fromARGB(255, 49, 47, 47),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Kru Bus",
                          style: TextStyle(
                            color: Color.fromARGB(255, 15, 0, 0),
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                            width: 10), // Add some space between the elements
                        Expanded(
                          child: Text(
                            chartMasters[0]["crew_bus"],
                            style: const TextStyle(
                              color: Color.fromARGB(255, 49, 47, 47),
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ])));
  }
}

class BannerItem {
  final String title;
  final String description;
  final String imageUrl;

  BannerItem({
    required this.title,
    required this.description,
    required this.imageUrl,
  });
}
