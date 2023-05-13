import 'package:flutter/material.dart';
import '../helper/Constant.dart';

class DataTableTiket extends StatefulWidget {
  const DataTableTiket({Key? key}) : super(key: key);

  @override
  _DataTableTiketState createState() => _DataTableTiketState();
}

class _DataTableTiketState extends State<DataTableTiket> {
  late List<DataRow> rows;

  @override
  void initState() {
    super.initState();

    rows = List.generate(
      20,
      (index) => DataRow(
        cells: [
          DataCell(Text('Id Tiket $index')),
          DataCell(Text('Kategori $index')),
          DataCell(Text('Tanggal $index')),
          DataCell(Text('Berangkat $index')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text('Daftar Tiket'),
        backgroundColor: Color(int.parse('0xFF${Constant.prime_color}')),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: DataTable(
          columns: const [
            DataColumn(
              label: Text('Id Tiket'),
            ),
            DataColumn(
              label: Text('Kategori'),
            ),
            DataColumn(
              label: Text('Tanggal'),
            ),
            DataColumn(
              label: Text('Berangkat'),
            ),
          ],
          rows: rows,
        ),
      ),
    );
  }
}
