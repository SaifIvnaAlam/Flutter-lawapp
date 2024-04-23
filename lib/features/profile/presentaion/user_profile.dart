import 'package:flutter/material.dart';
import 'package:lawapp/utils/widgets/primary_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      body: const Text("user Profile"),
    );
  }
}
