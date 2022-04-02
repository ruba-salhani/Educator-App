import 'package:educator/presentation/theme/app_colors.dart';
import 'package:flutter/material.dart';

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
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: AppColors.primary,
        ),
        child: Icon(icon),
      ),
      iconColor: Colors.white,
      title: Text(
        text,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      onTap: ontap,
    );
  }
}
