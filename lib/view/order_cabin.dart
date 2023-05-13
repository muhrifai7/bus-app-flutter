import 'package:flutter/material.dart';
import 'dart:async';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'receipt_cabin.dart';

class OrderCabinScreen extends StatefulWidget {
  const OrderCabinScreen({Key? key}) : super(key: key);

  @override
  State<OrderCabinScreen> createState() => _OrderCabinScreenSate();
}

class _OrderCabinScreenSate extends State<OrderCabinScreen> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  List<String> listKota = [
    "Jakarta",
    "Surabaya",
    "Bali",
    'Semarang',
    'Jogja',
    'Makasar',
    'Bandung'
  ];

  List<String> penumpang = [
    "1 penumpang",
    "2 penumpang",
    "3 penumpang",
    "4 penumpang",
    "5 penumpang",
    "6 penumpang",
    "7 penumpang",
    "8 penumpang",
    "9 penumpang",
  ];

  final List<Map<String, dynamic>> _passengerOptions = [
    {'id': 1, 'name': '1 Penumpang'},
    {'id': 2, 'name': '2 Penumpang'},
    {'id': 3, 'name': '3 Penumpang'},
    {'id': 4, 'name': '4 Penumpang'},
  ];

  late DateTime _selectedDate;
  final DateFormat _dateFormat = DateFormat('EEEE, d MMM yyyy');
  final TextEditingController userName = TextEditingController();
  final TextEditingController itemWeight = TextEditingController();
  final TextEditingController amountItem = TextEditingController();
  String? selectedDeparture;
  String? selectedDestination;
  String? selectedPesangger;
  int? selectedPassenger;
  // late List<Map<String, dynamic>> _dropdownValues;
  @override
  void initState() {
    super.initState();
    _selectedDate = DateTime.now();
    selectedDeparture = listKota[0];
    selectedDestination = listKota[2];
    selectedPassenger = _passengerOptions[0]['id'];

    // _dropdownValues = []
  }

  void addButton(formkey) async {
    if (formkey.currentState != null) {
      if (formkey.currentState!.validate()) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CabinReceipt(
              passengerName: userName.text,
              selectedPassenger: selectedPassenger!,
              airlineName: 'Nama travel',
              flightNumber: 'B 2002 SHD',
              departureCity: selectedDeparture,
              arrivalCity: selectedDestination,
              departureTime:
                  DateFormat('EEEE, dd MMM yyyy').format(_selectedDate),
              price: '10000',
            ),
          ),
        );
      }
    }
  }
  // String _selectedDate = '';

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

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('id', null); // initialize Indonesian locale
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.all(10), // Set margin for the container
            child: (SingleChildScrollView(
                child: Form(
              autovalidateMode: AutovalidateMode.always,
              key: formkey,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: TextFormField(
                        controller: userName,
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: 'Nama',
                            hintText: 'Nama'),
                        validator: MultiValidator(
                            [RequiredValidator(errorText: "* Required")])),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10), // Add your margin here
                      child: SizedBox(
                        child: DropdownSearch<String>(
                          popupProps: const PopupProps.menu(
                            showSelectedItems: true,
                          ),
                          validator: (value) =>
                              value == null ? 'This field is required' : null,
                          items: listKota,
                          dropdownDecoratorProps: const DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                              labelText: "Dari",
                              hintText: "Kota keberangkatan",
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedDeparture = value;
                            });
                          },
                          selectedItem: selectedDestination,
                        ),
                      )),
                  Container(
                      margin: const EdgeInsets.only(
                          top: 10), // Add your margin here
                      child: SizedBox(
                        child: DropdownSearch<String>(
                          popupProps: const PopupProps.menu(
                            showSelectedItems: true,
                          ),
                          items: listKota,
                          dropdownDecoratorProps: const DropDownDecoratorProps(
                            dropdownSearchDecoration: InputDecoration(
                              labelText: "Ke",
                              hintText: "Kota keberangkatan",
                            ),
                          ),
                          onChanged: (value) {
                            setState(() {
                              selectedDestination = value;
                            });
                          },
                          selectedItem: selectedDeparture,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Kota keberangkatan harus dipilih";
                            }
                            return null; // return null to indicate validation passed
                          },
                        ),
                      )),
                  Container(
                    margin:
                        const EdgeInsets.only(top: 10), // Add your margin here
                    child: SizedBox(
                      child: TextFormField(
                        controller: TextEditingController(
                            text: _selectedDate == null
                                ? ''
                                : DateFormat.yMMMMd('id')
                                    .format(_selectedDate)),
                        decoration: const InputDecoration(
                          labelText: 'Piling Tanggal Keberangkatan',
                          hintText: 'Tanggal',
                          prefixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(),
                        ),
                        onTap: () => _selectDate(context),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter
                              .digitsOnly // Only allow digits
                        ],
                        controller: itemWeight,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Berat Barang',
                          hintText: 'Berat Barang',
                          suffixIcon: Padding(
                            padding:
                                EdgeInsetsDirectional.only(end: 12.0, top: 8),
                            child: Text(
                              'kg',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                        validator: MultiValidator(
                            [RequiredValidator(errorText: "* Required")])),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: TextFormField(
                        keyboardType: TextInputType.number,
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter
                              .digitsOnly // Only allow digits
                        ],
                        controller: amountItem,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Harga',
                          hintText: 'Harga',
                        ),
                        validator: MultiValidator(
                            [RequiredValidator(errorText: "* Required")])),
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () => addButton(formkey),
                      // onPressed: ()
                      // },

                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(
                            255, 30, 109, 174), // set the background color
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              10), // set the border radius
                        ),
                      ),
                      child: const Text('Simpan'),
                    ),
                  ),
                ],
              ),
            )))));
  }
}
