import 'package:flutter/material.dart';
import '../helper/Constant.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  static const String routeName = '/details';

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Details Page'),
        backgroundColor: Color(int.parse('0xFF${Constant.prime_color}')),
      ),
      body: const Center(
        child: Text('Details for selected row'),
      ),
    );
  }
}
