import 'package:educator/presentation/theme/app_colors.dart';
import 'package:educator/presentation/views/components/components.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    Key? key,
    required this.icon,
    required this.text,
    required this.ontap,
  }) : super(key: key);
  final IconData icon;
  final String text;
  final void Function()? ontap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        alignment: Alignment.center,
        height: Get.height / 20,
        width: Get.width / 10,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.secondary,
        ),
        child: Icon(icon),
      ),
      iconColor: Colors.white,
      title: CustomText(
        size: false, text: text,
        //style: Theme.of(context).textTheme.labelLarge,
      ),
      onTap: ontap,
    );
  }
}
