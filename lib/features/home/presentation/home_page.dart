import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lawapp/utils/constants/app_colors.dart';
import 'package:lawapp/utils/constants/app_radius.dart';
import 'package:lawapp/utils/constants/app_spacing.dart';
import 'package:lawapp/utils/widgets/primary_scaffold.dart';
import 'package:lawapp/utils/widgets/rounded_icon_button.dart';
import 'package:lawapp/features/home/application/chat_cubit/chat_cubit.dart';
import 'package:lawapp/features/home/presentation/components/text_field.dart';
import 'package:lawapp/features/home/application/image_picker_cubit/image_picker_cubit.dart';

// ignore_for_file: no_leading_underscores_for_local_identifiers

class HomePage extends StatelessWidget {
  HomePage({super.key});
  TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return PrimaryScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            heightBox40,
            Container(
              height: deviceHeight(context) - 200,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                ),
                borderRadius: primaryContainerRadius,
              ),
              child: Column(
                children: [
                  BlocBuilder<ChatCubit, ChatState>(
                    builder: (context, state) {
                      return state.chats.isNotEmpty
                          ? Column(
                              children: [
                                SizedBox(
                                  height: deviceHeight(context) - 260,
                                  child: ListView.builder(
                                    itemCount: state.chats.length,
                                    itemBuilder: (context, index) {
                                      return Padding(
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 10, horizontal: 10),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                const CircleAvatar(
                                                  child: Icon(Icons.person),
                                                ),
                                                widthBox12,
                                                Text(state
                                                    .chats[index].question),
                                              ],
                                            ),
                                            heightBox12,
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                const CircleAvatar(
                                                  child: Icon(
                                                    Icons
                                                        .radio_button_on_outlined,
                                                    color:
                                                        AppColors.accentColor,
                                                  ),
                                                ),
                                                widthBox12,
                                                Flexible(
                                                  child: state.isAnswerLoading ==
                                                          true
                                                      ? const CircularProgressIndicator
                                                          .adaptive()
                                                      : Text(
                                                          state.chats[index]
                                                              .answer,
                                                          overflow: TextOverflow
                                                              .clip, // or TextOverflow.ellipsis, TextOverflow.fade
                                                          maxLines:
                                                              null, // Set to null for unlimited lines
                                                        ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ],
                            )
                          : SizedBox();
                    },
                  )
                  // SizedBox(
                  //   height: 100,
                  //   child: BlocBuilder<ImagePickerCubit, ImagePickerState>(
                  //     builder: (context, state) => state.when(
                  //       initial: () => const SizedBox(),
                  //       picked: (imagePath) => Bounce(
                  //         onTap: () {
                  //           context.read<ImagePickerCubit>().removeImage();
                  //         },
                  //         child: Container(
                  //           height: 100,
                  //           width: double.infinity,
                  //           decoration: BoxDecoration(
                  //             image: DecorationImage(
                  //               image: FileImage(
                  //                 File(imagePath),
                  //               ),
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       notPicked: () => const SizedBox(),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
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
                      context
                          .read<ChatCubit>()
                          .askQuestion(_inputController.text);

                      _inputController.clear();
                    },
                    backGroundColor: AppColors.buttonFillColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
