import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class ExpandScreen extends StatefulWidget {
  const ExpandScreen({Key? key}) : super(key: key);

  @override
  State<ExpandScreen> createState() => _ExpandScreenSate();
}

class _ExpandScreenSate extends State<ExpandScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  TextEditingController departureController = TextEditingController();
  TextEditingController busName = TextEditingController();
  TextEditingController condecturName = TextEditingController();
  TextEditingController pendapatanTiket = TextEditingController();
  TextEditingController pendapatanTIketOnline = TextEditingController();
  TextEditingController pendapatanBagasi = TextEditingController();
  TextEditingController perbaikan = TextEditingController();
  TextEditingController toll = TextEditingController();
  TextEditingController tpr = TextEditingController();
  TextEditingController solar = TextEditingController();
  TextEditingController hargaSolar = TextEditingController();
  TextEditingController perpal = TextEditingController();
  TextEditingController extraPremi = TextEditingController();
  TextEditingController pendapatanBersih = TextEditingController();
  TextEditingController pendapatanSetor = TextEditingController();

  late DateTime _selectedDate;
  final DateFormat _dateFormat = DateFormat('EEEE, d MMM yyyy');
  bool _isVisible = false;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
  }

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2020),
      lastDate: DateTime(2100),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  void addButton(formKey) async {
    print(formKey);
  }

  void _handleCountPremi(formkey) {
    setState(() {
      _isLoading = true;
    });
    // Simulate a long-running operation.
    Future.delayed(const Duration(seconds: 2), () {
      if (formkey.currentState != null) {
        setState(() {
          _isVisible = true;
          _isLoading = false;
          extraPremi.text = "100000";
          pendapatanBersih.text = "105000";
          pendapatanSetor.text = "110000";
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id', null);
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Halaman Pengeluaran'),
        ),
        body: Container(
            margin: const EdgeInsets.all(10),
            child: SingleChildScrollView(
                // Set margin for the container
                child: Column(
              children: [
                Column(
                  children: [
                    // your column widgets here
                    Container(
                        margin: const EdgeInsets.all(
                            10), // Set margin for the container
                        child: (SingleChildScrollView(
                          child: Form(
                              autovalidateMode: AutovalidateMode.always,
                              key: formkey,
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: const EdgeInsets.symmetric(
                                              vertical:
                                                  10), // Add your margin here
                                          child: SizedBox(
                                            child: TextFormField(
                                              controller: TextEditingController(
                                                  text: _selectedDate == null
                                                      ? ''
                                                      : DateFormat.yMMMMd('id')
                                                          .format(
                                                              _selectedDate)),
                                              decoration: const InputDecoration(
                                                labelText: 'Tanggal Transaksi',
                                                hintText: 'Tanggal',
                                                prefixIcon:
                                                    Icon(Icons.calendar_today),
                                                border: OutlineInputBorder(),
                                              ),
                                              onTap: () => _selectDate(context),
                                            ),
                                          ),
                                        ),
                                      ),

                                      const SizedBox(
                                          width:
                                              10), // add some spacing between the inputs
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            controller: busName,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Nama Bus',
                                                hintText: 'Nama Bus'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            controller: condecturName,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Nama Kondektur',
                                                hintText: 'Nama Kondektur'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            controller: condecturName,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Nama Kondektur',
                                                hintText: 'Nama Kondektur'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            controller: pendapatanTiket,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Pendapatan Tiket',
                                                hintText: 'Pendapatan Tiket'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            controller: pendapatanTIketOnline,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText:
                                                    'Pendapatan Tiket Online',
                                                hintText:
                                                    'Pendapatan Tiket Online'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            controller: pendapatanBagasi,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Pendapatan Bagasi',
                                                hintText: 'Pendapatan Bagasi'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            controller: perbaikan,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Perbaikan',
                                                hintText: 'Perbaikan'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            controller: toll,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Tol',
                                                hintText: 'Tol'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            controller: tpr,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'TPR',
                                                hintText: 'TPR'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            controller: solar,
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Solar Liter',
                                                hintText: 'Solar Liter'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 10),
                                          child: TextFormField(
                                            controller: hargaSolar,
                                            keyboardType: TextInputType.number,
                                            inputFormatters: <
                                                TextInputFormatter>[
                                              FilteringTextInputFormatter
                                                  .digitsOnly // Only allow digits
                                            ],
                                            decoration: const InputDecoration(
                                                border: OutlineInputBorder(),
                                                labelText: 'Harga Solar',
                                                hintText: 'Harga Solar'),
                                            // validator: MultiValidator(
                                            //     [RequiredValidator(errorText: "* Required")])),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),

                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: TextFormField(
                                      keyboardType: TextInputType.number,
                                      inputFormatters: <TextInputFormatter>[
                                        FilteringTextInputFormatter
                                            .digitsOnly // Only allow digits
                                      ],
                                      controller: perpal,
                                      decoration: const InputDecoration(
                                          border: OutlineInputBorder(),
                                          labelText: 'Perpal',
                                          hintText: 'Perpal'),
                                      // validator: MultiValidator(
                                      //     [RequiredValidator(errorText: "* Required")])),
                                    ),
                                  ),
                                  if (_isLoading)
                                    Visibility(
                                      visible: _isLoading,
                                      child: const SizedBox(
                                        width: 20,
                                        height: 20,
                                        child: CircularProgressIndicator(
                                          strokeWidth: 2,
                                        ),
                                      ),
                                    ),
                                  // tombol
                                  Container(
                                    margin: const EdgeInsets.all(10),
                                    child: ElevatedButton(
                                      onPressed: () =>
                                          _handleCountPremi(formkey),
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255,
                                            39,
                                            164,
                                            56), // set the background color
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(
                                              10), // set the border radius
                                        ),
                                      ),
                                      child: const Text(
                                          'Hitung Premi dan Disetor'),
                                    ),
                                  ),

                                  if (_isVisible)
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly // Only allow digits
                                              ],
                                              controller: extraPremi,
                                              decoration: const InputDecoration(
                                                  enabled: false,
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      'Extra (premi dimuka) 22%',
                                                  hintText:
                                                      'Extra (premi dimuka) 22%'),
                                              // validator: MultiValidator(
                                              //     [RequiredValidator(errorText: "* Required")])),
                                            ),
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 10,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: TextFormField(
                                              keyboardType:
                                                  TextInputType.number,
                                              inputFormatters: <
                                                  TextInputFormatter>[
                                                FilteringTextInputFormatter
                                                    .digitsOnly // Only allow digits
                                              ],
                                              controller: pendapatanBersih,
                                              enabled: false,
                                              decoration: const InputDecoration(
                                                  border: OutlineInputBorder(),
                                                  labelText:
                                                      'Pendapatan bersih 8%',
                                                  hintText:
                                                      'Pendapatan bersih'),
                                              // validator: MultiValidator(
                                              //     [RequiredValidator(errorText: "* Required")])),
                                            ),
                                          ),
                                        )
                                      ],
                                    ),

                                  if (_isVisible)
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          vertical: 10),
                                      child: TextFormField(
                                        keyboardType: TextInputType.number,
                                        inputFormatters: <TextInputFormatter>[
                                          FilteringTextInputFormatter
                                              .digitsOnly // Only allow digits
                                        ],
                                        controller: pendapatanSetor,
                                        enabled: false,
                                        decoration: const InputDecoration(
                                            border: OutlineInputBorder(),
                                            labelText: 'Pendapatan disetor',
                                            hintText: 'Pendapatan disetor'),
                                        // validator: MultiValidator(
                                        //     [RequiredValidator(errorText: "* Required")])),
                                      ),
                                    ),
                                  if (_isVisible)
                                    Container(
                                      margin: const EdgeInsets.all(10),
                                      child: ElevatedButton(
                                        onPressed: () => addButton(formkey),
                                        // onPressed: ()
                                        // },

                                        style: ElevatedButton.styleFrom(
                                          backgroundColor: const Color.fromARGB(
                                              255,
                                              30,
                                              109,
                                              174), // set the background color
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10), // set the border radius
                                          ),
                                        ),
                                        child: const Text('Simpan'),
                                      ),
                                    ),
                                ],
                              )),
                        ))),
                  ],
                ),
              ],
            ))));
  }
}

class BankListDataModel {
  String bankName;
  String bankLogo;
  BankListDataModel(this.bankName, this.bankLogo);
}
