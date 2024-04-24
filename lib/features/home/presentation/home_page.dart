import 'dart:io';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawapp/utils/constants/app_colors.dart';
import 'package:lawapp/utils/constants/app_radius.dart';
import 'package:lawapp/utils/constants/app_spacing.dart';
import 'package:lawapp/utils/widgets/primary_scaffold.dart';
import 'package:lawapp/utils/widgets/rounded_icon_button.dart';
import 'package:lawapp/features/home/presentation/components/text_field.dart';
import 'package:lawapp/features/home/application/cubit/image_picker_cubit.dart';

// ignore_for_file: no_leading_underscores_for_local_identifiers

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _inputController = TextEditingController();
    return PrimaryScaffold(
        body: Column(
      children: [
        heightBox40,
        Container(
          height: 650,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
            ),
            borderRadius: primaryContainerRadius,
          ),
          child: Stack(
            children: [
              Column(
                children: [
                  const Spacer(),
                  SizedBox(
                    height: 100,
                    child: BlocBuilder<ImagePickerCubit, ImagePickerState>(
                      builder: (context, state) => state.when(
                        initial: () => const SizedBox(),
                        picked: (imagePath) => Image.file(File(imagePath)),
                        notPicked: () => const SizedBox(),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: Row(
                      children: [
                        RoundedIconButton(
                          icon: Icons.camera_alt_rounded,
                          onTap: () {
                            context.read<ImagePickerCubit>().pickImage();
                          },
                          backGroundColor: AppColors.buttonFillColor,
                        ),
                        Expanded(
                          child: InputTextField(
                            controller: _inputController,
                          ),
                        ),
                        RoundedIconButton(
                          icon: Icons.send,
                          onTap: () {
                            log("Message sent");
                          },
                          backGroundColor: AppColors.buttonFillColor,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
