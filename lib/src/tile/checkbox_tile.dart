// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_tile.dart';

class CheckboxTile extends StatelessWidget {
  const CheckboxTile({
    Key? key,
    required this.onChanged,
    this.value = false,
    this.text,
  })  : assert(text != null, 'Text cannot be null'),
        super(key: key);

  final Function(bool?) onChanged;
  final bool value;
  final String? text;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return InkWell(
      onTap: () {
        onChanged.call(!value);
      },
      child: Row(
        children: [
          Checkbox(
            value: value,
            onChanged: onChanged,
            materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            // visualDensity: VisualDensity.compact,
            activeColor: theme.colorScheme.primary,
          ),
          const WidthSpace(6),
          Text(
            text.toString(),
            style: theme.textTheme.caption,
          ),
        ],
      ),
    );
  }
}
