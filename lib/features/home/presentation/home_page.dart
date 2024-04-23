import 'package:flutter/material.dart';
import 'package:lawapp/utils/constants/app_radius.dart';
import 'package:lawapp/utils/constants/app_spacing.dart';
import 'package:lawapp/utils/constants/app_text_Style.dart';
import 'package:lawapp/utils/widgets/primary_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
        body: Column(
      children: [
        const Text(
          "Welcome",
          style: headingTextStyle,
        ),
        heightBox40,
        Container(
          height: 500,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: primaryContainerRadius,
          ),
          child: Container(),
        ),
      ],
    ));
  }
}
