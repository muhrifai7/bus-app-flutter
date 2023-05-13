import 'package:flutter/material.dart';
// import 'package:my_app/api/api_service.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Halaman Profile'),
        ),
        body: const ListTile(
            title: Text("Rifai"),
            subtitle: Text("rifai@gmail.com"),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(""),
            )));
    // trailing: Text("10:00 Am")));
  }
}
