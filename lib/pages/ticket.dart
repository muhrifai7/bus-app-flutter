import 'package:flutter/material.dart';

import 'package:flutter_application_1/api/api_tiket.dart';
import '../models/tiket.dart';
import '../helper/Constant.dart';

class DataTableTiket extends StatefulWidget {
  const DataTableTiket({Key? key}) : super(key: key);

  @override
  _DataTableTiketState createState() => _DataTableTiketState();
}

class _DataTableTiketState extends State<DataTableTiket> {
  late List<DataRow> rows;
  List<Tiket>? tikets;
  var isLoading = false;

  @override
  void initState() {
    super.initState();

    rows = [];

    getDataTiket();
  }

  getDataTiket() async {
    setState(() {
      isLoading = true;
    });

    ApiService apiService = ApiService();
    tikets = await apiService.getTiket();

    if (tikets != null) {
      setState(() {
        isLoading = false;
        rows.clear();
        rows = tikets!
            .map((tiket) => DataRow(
                  cells: [
                    DataCell(Text(tiket.id.toString())),
                    DataCell(Text(tiket.user.nama_lengkap)),
                    DataCell(Text(tiket.tgl_transaksi)),
                    DataCell(Text(tiket.kode_trayek)),
                  ],
                ))
            .toList();
      });
    }
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
        child: isLoading
            ? const Center(child: CircularProgressIndicator())
            : DataTable(
                columns: const [
                  DataColumn(
                    label: Text('Id Tiket'),
                  ),
                  DataColumn(
                    label: Text('Nama Lengkap'),
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
