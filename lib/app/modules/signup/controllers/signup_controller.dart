import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';

class SignupController extends GetxController {
  Future<void> checkPermissions() async {
    var status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }

  var selectedImagePath = ''.obs; // Observable for image path
  var selectedImageSize = ''.obs; // Observable for image size

  // Future<XFile?> pickImage() async {
  //   final imagePicker = ImagePicker();
  //   final pickedFile = await imagePicker.pickImage(source: ImageSource.gallery);

  //   if (pickedFile != null) {
  //     selectedImagePath.value = pickedFile.path;

  //     // Get the app's document directory
  //     final Directory appDocDir = await getApplicationDocumentsDirectory();
  //     // Create a new directory named "uploads" if it doesn't exist
  //     print(appDocDir);
  //     final Directory uploadDir = Directory('${appDocDir.path}/uploads');
  //     if (!await uploadDir.exists()) {
  //       await uploadDir.create();
  //     }

  //     // Copy the picked image to the uploads directory
  //     final File imageFile = File(pickedFile.path);
  //     final String newPath = '${uploadDir.path}/${pickedFile.name}';
  //     await imageFile.copy(newPath); // Save the image

  //     // Get the size of the copied image
  //     final size = await imageFile.length();
  //     selectedImageSize.value = '${(size / 1024).toStringAsFixed(2)} KB';
  //   }

  //   return pickedFile;
  // }

  final count = 0.obs;



  void increment() => count.value++;
}
