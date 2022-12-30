import 'package:image_cropper/image_cropper.dart';
import 'package:kumparan_clone/src/common/colors.dart';

class ImageCropperUtils {
  static Future<CroppedFile?> cropImage(
    String filePath, {
    CropStyle cropStyle = CropStyle.rectangle,
  }) async {
    var croppedImage = await ImageCropper().cropImage(
      sourcePath: filePath,
      aspectRatio: const CropAspectRatio(ratioX: 5, ratioY: 4),
      cropStyle: cropStyle,
      uiSettings: [
        AndroidUiSettings(
          toolbarColor: ColorLight.background,
          hideBottomControls: true,
          activeControlsWidgetColor: ColorLight.card,
          initAspectRatio: CropAspectRatioPreset.square,
          lockAspectRatio: true,
          toolbarTitle: 'Crop',
        ),
      ],
    );
    return croppedImage;
  }
}
