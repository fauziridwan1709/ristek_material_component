// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_decorators.dart';

class TextInputDecorator {
  TextInputDecorator() {
    _inputDecoration = const InputDecoration();
  }

  InputDecoration? _inputDecoration;

  InputDecoration defaultDecoration() {
    return _inputDecoration!.copyWith();
  }

  InputDecoration fullRadiusDecoration(BuildContext context) {
    final theme = Theme.of(context);
    return _inputDecoration!.copyWith(
      hintStyle: const TextStyle(fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(horizontal: 20),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(200),
        borderSide: BorderSide(color: theme.disabledColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(200),
        borderSide: BorderSide(color: theme.disabledColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(200),
        borderSide: BorderSide(color: theme.disabledColor),
      ),
    );
  }

  InputDecoration radiusDecoration(
      {String? hint, required BuildContext context}) {
    final theme = Theme.of(context);
    return _inputDecoration!.copyWith(
      hintText: hint ?? 'Input',
      fillColor: theme.inputDecorationTheme.fillColor,
      filled: true,
      hintStyle: const TextStyle(fontSize: 12),
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: theme.disabledColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: theme.disabledColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide(color: theme.primaryColor),
      ),
    );
  }

  InputDecoration search({String? hint, required BuildContext context}) {
    final theme = Theme.of(context);
    return _inputDecoration!.copyWith(
      hintText: hint ?? 'Input',
      prefixIcon: Icon(Icons.search),
      fillColor: theme.inputDecorationTheme.fillColor,
      filled: true,
      hintStyle: theme.inputDecorationTheme.hintStyle,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: theme.disabledColor),
      ),
      enabledBorder: theme.inputDecorationTheme.enabledBorder,
      focusedBorder: theme.inputDecorationTheme.focusedBorder,
    );
  }

  InputDecoration input({String? hint, required BuildContext context}) {
    final theme = Theme.of(context);
    return _inputDecoration!.copyWith(
      hintText: hint ?? 'Input',
      fillColor: theme.inputDecorationTheme.fillColor,
      filled: true,
      hintStyle: theme.inputDecorationTheme.hintStyle,
      contentPadding: const EdgeInsets.symmetric(horizontal: 24, vertical: 15),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(color: theme.disabledColor),
      ),
      enabledBorder: theme.inputDecorationTheme.enabledBorder,
      focusedBorder: theme.inputDecorationTheme.focusedBorder,
    );
  }
}
