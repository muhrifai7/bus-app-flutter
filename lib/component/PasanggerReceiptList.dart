import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
// import 'package:printing/printing.dart';
import 'package:intl/date_symbol_data_local.dart';

class PasanggerReceiptList extends StatelessWidget {
  final String? passengerName;
  final int? selectedPassenger;
  final String? travelName;
  final String? travelNumber;
  final String? departureCity;
  final String? arrivalCity;
  final String? departureTime;
  final String? price;

  const PasanggerReceiptList({
    super.key,
    this.passengerName = "",
    this.selectedPassenger = 1,
    this.travelName = "",
    this.travelNumber = "",
    this.departureCity = "",
    this.arrivalCity = "",
    this.departureTime = "",
    this.price = "",
  });

// proses savenya sepertia apa
  void handlePrintTicket(context) async {
    print(selectedPassenger);
    print(passengerName);
    print(travelName);
    print(travelNumber);
    print(departureCity);
    print(arrivalCity);
    print(price);
    // if save to database success show alert
    // await confirm(context,
    //     title: const Text('Berhasil'),
    //     content: const Text('Tiket berhasil di cetak ulang'),
    //     hideCancel: true,
    //     textOK: const Text('Ok'));
    // Map<String, dynamic> chartMaster = {
    //   'account_code': '001',
    //   'account_name': 'John Doe',
    //   'account_type': 'Savings',
    //   'inactive': 0,
    //   'no_pol': '12345',
    //   'id_bus': 1,
    //   'no_rek': '67890',
    //   'id_company': 1
    // };

    // await SqlHelper.insertChartMaster(chartMaster);

    // // and navigate back
    // return Navigator.pop(context);
  }

  // create confirm dialog

  @override
  Widget build(BuildContext context) {
    final formatter = NumberFormat.currency(locale: 'id_ID', symbol: 'Rp ');
    initializeDateFormatting('id', null); // initialize Indonesian locale

    return Scaffold(
        appBar: AppBar(
          title: const Text('Tiket Kuitansi'),
        ),
        body: Column(children: <Widget>[
          Expanded(
            //color: Colors.white,
            child: ListView.builder(
                itemCount: selectedPassenger!,
                itemBuilder: (BuildContext context, int index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        color: Colors.blue,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              travelName!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              travelNumber!,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 16.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Kota keberangkatan',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  departureCity!,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Kota Tujuan:',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  arrivalCity!,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Waktu Berangkat:',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  departureTime!,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8.0),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Nama Penumpang :',
                                  style: TextStyle(fontSize: 16.0),
                                ),
                                Text(
                                  passengerName!,
                                  style: const TextStyle(fontSize: 16.0),
                                ),
                              ],
                            ),
                            const Divider(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Total',
                                  style: TextStyle(fontSize: 20.0),
                                ),
                                Text(
                                  formatter.format(double.parse(price!)),
                                  style: const TextStyle(fontSize: 20.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
          ),
        ]));
  }
}
