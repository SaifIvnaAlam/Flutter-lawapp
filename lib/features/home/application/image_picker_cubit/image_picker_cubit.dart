import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

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

  Future<void> removeImage() async {
    emit(ImagePickerState.notPicked());
  }
}
