import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AuthenticationController extends GetxController {
  static AuthenticationController authController = Get.find();
  late Rx<File?> pickedFile;
  File? get ProfileImage => pickedFile.value;

  pickImageFileFromGallery() async {
    final imageFile =
        await ImagePicker().pickImage(source: ImageSource.gallery);

    if (imageFile != null) {
      Get.snackbar(
          'Profile image', 'you have successfully picked your profile image.');
    }
    // pickedFile = Rx<File?>(File(imageFile!.path));
    if (imageFile != null) {
      pickedFile.value = File(imageFile!.path);
    } else {
      print("Error: imageFile is null");
    }
  }

  captureImageFromPhoneCamera() async {
    final imageFile = await ImagePicker().pickImage(source: ImageSource.camera);

    if (imageFile != null) {
      Get.snackbar(
          'Profile image', 'you have successfully picked your profile image.');
    }
    pickedFile = Rx<File?>(File(imageFile!.path));
  }
}













// import 'dart:io';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';

// class AuthenticationController extends GetxController {
//   static AuthenticationController get to => Get.find<AuthenticationController>();

//   Rx<File?> pickedFile = Rx<File?>(null);

//   File? get profileImage => pickedFile.value;

//   pickImageFileFromGallery() async {
//     final imageFile = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (imageFile != null) {
//       pickedFile.value = File(imageFile.path);
//       Get.snackbar('Profile image', 'You have successfully picked your profile image.');
//     } else {
//       print("Error: No image selected from gallery.");
//     }
//   }

//   captureImageFromPhoneCamera() async {
//     final imageFile = await ImagePicker().pickImage(source: ImageSource.camera);
//     if (imageFile != null) {
//       pickedFile.value = File(imageFile.path);
//       Get.snackbar('Profile image', 'You have successfully picked your profile image.');
//     } else {
//       print("Error: No image captured.");
//     }
//   }
// }