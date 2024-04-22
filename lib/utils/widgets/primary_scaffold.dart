import 'package:flutter/material.dart';
import 'package:lawapp/utils/constants/app_colors.dart';

class PrimaryScaffold extends StatelessWidget {
  PrimaryScaffold({
    super.key,
    required this.body,
    this.showAppBar = false,
    this.appBar,
  });

  Widget body;
  bool showAppBar;
  AppBar? appBar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.canvasColor,
      appBar: showAppBar ? appBar : null,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: body,
        ),
      ),
    );
  }
}
