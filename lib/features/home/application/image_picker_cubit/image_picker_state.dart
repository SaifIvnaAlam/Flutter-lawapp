part of 'image_picker_cubit.dart';

@freezed
class ImagePickerState with _$ImagePickerState {
  const factory ImagePickerState.initial() = _Initial;
  const factory ImagePickerState.picked(String imagePath) = _Picked;
  const factory ImagePickerState.notPicked() = _NotPicked;
}
