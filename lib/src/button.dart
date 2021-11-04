// Created by Muhamad Fauzi Ridwan on 04/11/21.

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:ristek_material_component/ristek_material_component.dart';

class AutoLayoutButton extends StatelessWidget {
  const AutoLayoutButton({
    Key? key,
    required this.text,
    this.textStyle,
    this.isLoading = false,
    this.onTap,
    this.backgroundColor,
  }) : super(key: key);

  final TextStyle? textStyle;
  final String text;
  final bool isLoading;
  final Color? backgroundColor;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final enabled = onTap != null;
    final theme = RistekMaterialSettings.theme;
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: enabled
            ? backgroundColor ?? theme.primaryColor
            : theme.disabledColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          child: Center(
            child: isLoading
                ? const SpinKitRing(
                    color: Colors.white,
                    size: 24,
                    lineWidth: 4,
                  )
                : Text(
                    text,
                    style: textStyle ?? theme.textTheme.button,
                  ),
          ),
        ),
      ),
    );
  }
}
