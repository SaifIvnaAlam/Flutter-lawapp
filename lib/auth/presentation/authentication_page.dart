import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:lawapp/utils/routes/route_name.dart';
import 'package:lawapp/utils/constants/app_assets.dart';
import 'package:lawapp/utils/constants/app_spacing.dart';
import 'package:lawapp/utils/constants/app_strings.dart';
import 'package:lawapp/utils/constants/app_text_Style.dart';
import 'package:lawapp/utils/widgets/primary_scaffold.dart';
import 'package:lawapp/utils/widgets/rounded_material_button.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      body: Column(
        children: [
          heightBox40,
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(AppStrings.welcomeHeading, style: headingTextStyle),
              Text(
                AppStrings.welcomePeragraph,
                style: peragraphStyle,
                textAlign: TextAlign.center,
              ),
            ],
          ),
          const Spacer(),
          Lottie.asset(AppAssets.catAnimation),
          RoundedMaterialButton(
            ontap: () {
              context.pushReplacement(AppRoutes.HOME_PAGE);
            },
            text: 'Continue with Google',
            showIcon: false,
          ),
          const SizedBox(height: 20),
          const Text("Continue without signing in"),
          heightBox16,
        ],
      ),
    );
  }
}
