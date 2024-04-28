import 'package:flutter/material.dart';
import 'package:utils/util_exports.dart';
import 'package:lawapp/utils/widgets/primary_scaffold.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      body: Column(
        children: [
          heightBoxtest,
          const Text("user Profile"),
        ],
      ),
    );
  }
}
