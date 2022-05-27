import 'dart:io';
import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImage extends StatefulWidget {
  const ProfileImage({Key? key}) : super(key: key);

  @override
  State<ProfileImage> createState() => _ProfileImageState();
}

class _ProfileImageState extends State<ProfileImage> {
  File? _image;
  final ImagePicker _picker = ImagePicker();
  Future pickImageFromeGallery() async {
    final imageFile = await _picker.pickImage(source: ImageSource.gallery);
    setState(() {
      if (imageFile != null) {
        _image = File(imageFile.path);
      }
    });
  }

  Future pickImageFromeCamera() async {
    final imageFile = await _picker.pickImage(source: ImageSource.camera);
    setState(() {
      if (imageFile != null) {
        _image = File(imageFile.path);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
          height: Get.height / 10,
          width: Get.width / 4,
          // decoration: BoxDecoration(
          //   borderRadius: BorderRadius.circular(10),
          //   //color: AppColors.secondary,
          // ),
          color: AppColors.secondary,
          //radius: 50.0,
          child: _image != null
              ? ClipRRect(
                  //borderRadius: BorderRadius.circular(48),
                  child: Image.file(
                    _image!,
                    // height: Get.height / 10,
                    // //width: Get.width / 4,
                    fit: BoxFit.fitHeight,
                  ),
                )
              : const Icon(Icons.camera_alt_outlined)),
      onTap: () {
        showDialog(
          context: context,
          builder: (BuildContext context) {
            return CustomDialog(
              content: "تعيين الصورة",
              firstButtonChild: "المعرض",
              firstButtonOnpressd: () {
                pickImageFromeGallery();
                Navigator.of(context).pop();
              },
              secondButtonChild: "الكاميرا",
              secondButtonOnpressd: () {
                pickImageFromeCamera();
                Navigator.of(context).pop();
              },
            );
          },
        );
      },
    );
  }
}
