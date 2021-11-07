// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_field.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    required this.controller,
    required this.focusNode,
    this.hintText,
    this.onClear,
    this.onChange,
  }) : super(key: key);

  final String? hintText;
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
          .search(
            hint: hintText ?? 'Search',
            context: context,
          )
          .copyWith(
            suffixIcon: focusNode.hasFocus
                ? InkWell(
                    onTap: onClear,
                    child: Icon(
                      Icons.clear,
                      color: Colors.grey,
                    ),
                  )
                : null,
          ),
    );
  }
}
