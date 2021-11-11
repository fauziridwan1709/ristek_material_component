// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_forms.dart';

/// A Input field
class InputField extends StatelessWidget {
  /// Creates a search fields
  const InputField({
    Key? key,
    required this.controller,
    required this.focusNode,
    this.hintText,
    this.label = 'label',
    this.onClear,
    this.onChange,
    this.minLines,
    this.maxLines,
    this.validator,
  }) : super(key: key);

  final String? hintText;

  final String label;

  final int? minLines;

  final int? maxLines;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController] and
  /// initialize its [TextEditingController.text] with [initialValue].
  final TextEditingController controller;
  final VoidCallback? onClear;
  final FocusNode focusNode;
  final Function(String)? onChange;

  /// Forms field validator.
  final FormFieldValidator<String>? validator;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final style = theme.textTheme.caption;
    final decoration = TextInputDecorator()
        .input(
          hint: hintText ?? 'Input',
          context: context,
        )
        .copyWith(prefixIcon: null);
    if (minLines == null && maxLines == null) {
      decoration.copyWith(
        labelText: label,
        labelStyle: TextStyle(
            fontFamilyFallback: style?.fontFamilyFallback,
            fontFamily: style?.fontFamily,
            fontWeight: style?.fontWeight,
            fontSize: 14),
      );
    }
    return TextFormField(
      key: key,
      controller: controller,
      focusNode: focusNode,
      style: theme.textTheme.caption,
      onChanged: onChange,
      minLines: minLines,
      maxLines: maxLines,
      decoration: decoration,
      validator: validator,
    );
  }
}
