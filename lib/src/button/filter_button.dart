// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_button.dart';

/// A Filter Button
class FilterButton extends StatelessWidget {
  /// Creates A Filter Button
  ///
  /// the either both of [text] and [child] cannot be null or null.
  const FilterButton({
    Key? key,
    this.child,
    this.text,
    this.onPressed,
    this.hasFilter = false,
    this.borderRadius,
  })  : assert(text == null || child == null, 'One of them must be null'),
        assert(child != null || text != null, 'One of them must not be null'),
        super(key: key);

  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final bool hasFilter;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: borderRadius ?? BorderRadius.circular(12),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Stack(
                    children: [
                      Icon(
                        Icons.filter_list_alt,
                        color: enabled
                            ? theme.colorScheme.primary
                            : theme.disabledColor,
                      ),
                      if (hasFilter)
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Container(
                              height: 8,
                              width: 8,
                              decoration: BoxDecoration(
                                color: theme.colorScheme.error,
                                shape: BoxShape.circle,
                              )),
                        ),
                    ],
                  ),
                  const WidthSpace(10),
                  Text(
                    'Filter',
                    style: theme.textTheme.button?.copyWith(
                      fontSize: 12,
                      color: enabled
                          ? theme.colorScheme.primary
                          : theme.disabledColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
