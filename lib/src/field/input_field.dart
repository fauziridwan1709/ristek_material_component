// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_field.dart';

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
  }) : super(key: key);

  final String? hintText;

  final String label;

  /// Controls the text being edited.
  ///
  /// If null, this widget will create its own [TextEditingController] and
  /// initialize its [TextEditingController.text] with [initialValue].
  final TextEditingController controller;
  final VoidCallback? onClear;
  final FocusNode focusNode;
  final Function(String)? onChange;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: theme.textTheme.caption,
        onChanged: onChange,
        decoration: TextInputDecorator()
            .input(
              hint: hintText ?? 'Input',
              context: context,
            )
            .copyWith(
              prefixIcon: null,
              labelText: label,
              labelStyle: theme.textTheme.caption?.copyWith(
                fontSize: 14,
              ),
            ));
  }
}
