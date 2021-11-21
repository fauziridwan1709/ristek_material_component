// Created by Muhamad Fauzi Ridwan on 08/11/21.

part of '_tag.dart';

/// A Selected Tag Widget
class SelectTag extends StatelessWidget {
  /// Creates Selected Tag Widget
  const SelectTag({
    Key? key,
    required this.label,
    this.isSelected = false,
    this.enabled = true,
    this.onChanged,
    this.padding,
  })  : assert(enabled ? true : !isSelected,
            'When enabled isSelected must be false'),
        super(key: key);

  /// Specify the label text
  final String label;

  /// Whether widget selected.
  final bool isSelected;

  /// if not enabled widget cant be tapped
  final bool enabled;

  final Function(bool?)? onChanged;

  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.background,
        boxShadow: BoxShadowDecorator().defaultShadow(context),
        borderRadius: BorderRadius.circular(4),
        border: Border.all(
            color: isSelected ? theme.colorScheme.primary : Colors.transparent),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: enabled ? () => onChanged?.call(!enabled) : null,
          child: Padding(
            padding: padding ??
                EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 6,
                ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    label.toString(),
                    style: theme.textTheme.caption?.copyWith(
                      color: enabled ? null : Colors.grey,
                    ),
                  ),
                ),
                const WidthSpace(6),
                Checkbox(
                  value: isSelected,
                  onChanged: enabled ? (val) {} : null,
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  // visualDensity: VisualDensity.compact,
                  activeColor: theme.colorScheme.primary,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
