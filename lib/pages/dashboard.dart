import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/home.dart';
import 'package:flutter_application_1/view/profile.dart';
import 'package:flutter_application_1/view/expand.dart';
import 'package:flutter_application_1/pages/order.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: IndexedStack(
          index: _currentIndex,
          children: const [
            HomeScreen(),
            ProfileScreen(),
            OrderScreen(),
            ExpandScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white10,
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.home),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.menu_book),
            ),
            label: 'Rekap Tiket',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.online_prediction_sharp),
            ),
            label: 'Pemesanan',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.ac_unit),
            ),
            label: 'Pengeluaran',
          ),
        ],
      ),
    );
  }
}
