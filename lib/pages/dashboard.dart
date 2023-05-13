import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper/Constant.dart';
import 'package:flutter_application_1/pages/home.dart';
import 'package:flutter_application_1/pages/ticket.dart';
import 'package:flutter_application_1/pages/expand.dart';
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
            DataTableTiket(),
            OrderScreen(),
            ExpandScreen(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(
            color: Color(int.parse('0xFF${Constant.prime_color}')),
            fontSize: 14),
        unselectedItemColor: const Color.fromARGB(255, 34, 31, 31),
        selectedItemColor:
            Color(int.parse('0xFF${Constant.prime_color}')), //<-- add
        elevation: 0,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.home,
                  color: Color(int.parse('0xFF${Constant.prime_color}'))),
            ),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.menu_book,
                  color: Color(int.parse('0xFF${Constant.prime_color}'))),
            ),
            label: 'Rekap Tiket',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.online_prediction_sharp,
                  color: Color(int.parse('0xFF${Constant.prime_color}'))),
            ),
            label: 'Pemesanan',
          ),
          BottomNavigationBarItem(
            icon: SizedBox(
              width: 32.0,
              height: 32.0,
              child: Icon(Icons.ac_unit,
                  color: Color(int.parse('0xFF${Constant.prime_color}'))),
            ),
            label: 'Pengeluaran',
          ),
        ],
      ),
    );
  }
}
