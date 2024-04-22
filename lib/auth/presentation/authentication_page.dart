import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lawapp/utils/routes/route_name.dart';
import 'package:lawapp/utils/constants/app_spacing.dart';
import 'package:lawapp/utils/constants/app_text_Style.dart';
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
          const Text("WELCOME", style: headingTextStyle),
          heightBox124,
          RoundedMaterialButton(
            ontap: () {
              context.pushReplacement(AppRoutes.HOMEPAGE);
            },
            text: 'Sign in with Google',
            showIcon: false,
          ),
          const SizedBox(height: 20),
          const Text("Continue without signing in"),
        ],
      ),
    );
  }
}
