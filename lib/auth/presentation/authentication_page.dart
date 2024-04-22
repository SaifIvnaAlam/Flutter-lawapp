import 'package:flutter/material.dart';
import 'package:lawapp/utils/widgets/primary_scaffold.dart';
import 'package:lawapp/utils/widgets/rounded_material_button.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedMaterialButton(
          ontap: () {},
          text: 'Sign in with Google',
          showIcon: false,
        ),
        const SizedBox(height: 20),
        const Text("Continue without signing in"),
      ],
    ));
  }
}
