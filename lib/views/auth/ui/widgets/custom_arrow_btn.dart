import 'package:ecommere/core/color_app.dart';
import 'package:flutter/material.dart';

class CustomArrowBtn extends StatelessWidget {
  const CustomArrowBtn({
    super.key,
    this.onTap,
  });
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.kPrimaryColor,
            foregroundColor: AppColors.kWhiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            )),
        onPressed: onTap,
        child: const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 12,
            vertical: 12,
          ),
          child: Icon(
            Icons.arrow_forward,
          ),
        ));
  }
}
