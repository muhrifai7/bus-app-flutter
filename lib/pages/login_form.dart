import 'package:flutter/material.dart';
import 'package:flutter_application_1/api/api_profile.dart';
import 'package:form_field_validator/form_field_validator.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  State<LoginForm> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<LoginForm> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nameController = TextEditingController();

  _login() async {
    if (formkey.currentState != null) {
      if (formkey.currentState!.validate()) {
        try {
          ApiService apiService = ApiService();
          String result = await apiService.login(
              nameController.text, passwordController.text);
          print("dasdasd  =$result");
          Navigator.pushNamed(context, '/dashboard');
          // process the response data here
        } catch (error) {
          // handle the error here
          print('An error occurred: $error');
        }
      } else {
        print("Not Validated");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('First Screen'),
      // ),
      body: SingleChildScrollView(
        child: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formkey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 60.0),
                child: Center(
                  child: SizedBox(
                      width: 200,
                      height: 150,
                      child: Image.asset('assets/images/logo.png')),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('BIS (Business Intelligence System'),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: TextFormField(
                    controller: nameController,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nama',
                        hintText: 'Masukan Nama'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      MinLengthValidator(6,
                          errorText: "Nama harus lebih dari 3 karakter"),
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 15.0, right: 15.0, top: 15, bottom: 0),
                child: TextFormField(
                    controller: passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Masukan password'),
                    validator: MultiValidator([
                      RequiredValidator(errorText: "* Required"),
                      MinLengthValidator(6,
                          errorText: "Password harus lebih dari 5 karakter"),
                    ])
                    //validatePassword,        //Function to check validation
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 50,
                width: 250,
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 39, 138, 219),
                    borderRadius: BorderRadius.circular(20)),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  onPressed: _login,
                  // onPressed: () async {
                  //   if (formkey.currentState != null) {
                  //     if (formkey.currentState!.validate()) {
                  //       try {
                  //         await ApiService.login(
                  //             nameController.text, passwordController.text);
                  //         Navigator.pushNamed(context, '/dashboard');
                  //         // process the response data here
                  //       } catch (error) {
                  //         // handle the error here
                  //         // print('An error occurred: $error');
                  //       }
                  //     } else {
                  //       // print("Not Validated");
                  //     }
                  //   }
                  // },
                  child: const Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
