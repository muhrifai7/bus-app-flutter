import 'package:flutter/material.dart';
import '../view/order_cabin.dart';
import '../view/order_passanger.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({Key? key}) : super(key: key);

  @override
  State<OrderScreen> createState() => _OrderScreenSate();
}

class _OrderScreenSate extends State<OrderScreen> {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Penumpang'),
    Tab(text: 'Bagasi'),
  ];
  final TextEditingController departureController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Pemesanan'),
          bottom: const TabBar(
            tabs: myTabs,
          ),
        ),
        body: const TabBarView(
            children: <Widget>[OrderPassangerScreen(), OrderCabinScreen()]),
      ),
    );
  }
}

class BankListDataModel {
  String bankName;
  String bankLogo;
  BankListDataModel(this.bankName, this.bankLogo);
}
