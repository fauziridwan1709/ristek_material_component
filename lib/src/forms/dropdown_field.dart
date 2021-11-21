// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_forms.dart';

/// A Drop down field
// class DropdownField extends StatelessWidget {
//   /// Creates a search fields
//   const DropdownField({
//     Key? key,
//     required this.controller,
//     required this.focusNode,
//     this.hintText,
//     this.onClear,
//     this.onChange,
//     this.onFieldSubmitted,
//   }) : super(key: key);
//
//   final String? hintText;
//
//   /// Controls the text being edited.
//   ///
//   /// If null, this widget will create its own [TextEditingController] and
//   /// initialize its [TextEditingController.text] with [initialValue].
//   final TextEditingController controller;
//   final VoidCallback? onClear;
//   final FocusNode focusNode;
//   final Function(String)? onChange;
//   final ValueChanged<String>? onFieldSubmitted;
//
//   @override
//   Widget build(BuildContext context) {
//     final theme = Theme.of(context);
//     return TextFormField(
//       controller: controller,
//       focusNode: focusNode,
//       style: theme.textTheme.caption?.copyWith(
//         fontSize: 14,
//         fontWeight: FontWeight.w500,
//       ),
//       onFieldSubmitted: onFieldSubmitted,
//       onChanged: onChange,
//       decoration: TextInputDecorator()
//           .search(
//             hint: hintText ?? 'Search',
//             context: context,
//           )
//           .copyWith(
//             suffixIcon: focusNode.hasFocus || controller.text.isNotEmpty
//                 ? InkWell(
//                     onTap: onClear,
//                     child: Icon(
//                       Icons.clear,
//                       color: Colors.grey,
//                     ),
//                   )
//                 : null,
//           ),
//     );
//   }
// }
