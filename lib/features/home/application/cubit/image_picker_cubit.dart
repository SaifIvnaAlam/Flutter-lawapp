import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'image_picker_cubit.freezed.dart';
part 'image_picker_state.dart';

class ImagePickerCubit extends Cubit<ImagePickerState> {
  ImagePickerCubit() : super(const ImagePickerState.initial());

  Future<void> pickImage() async {
    ImagePicker _picker = ImagePicker();

    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image!.path.isNotEmpty) {
      emit(ImagePickerState.picked(image.path));
    } else {
      emit(const ImagePickerState.notPicked());
    }
  }
}
