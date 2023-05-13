import 'package:flutter/material.dart';

class ProfileItem extends StatelessWidget {
  final String imgUrl;
  final String title;
  final String subtitle;
  const ProfileItem(
      {super.key,
      required this.imgUrl,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        leading: CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
        ),
        trailing: const Text("10:00 Am"));
  }
}
