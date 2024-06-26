import 'package:ecommerce_flutter/core/ui.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const PrimaryButton({super.key, required this.text, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: CupertinoButton(
        child: Text(text),
        onPressed: onPressed,
        color: AppColors.accent,
      ),
    );
  }
}
