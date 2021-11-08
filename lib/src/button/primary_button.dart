// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_button.dart';

/// A Primary Button.
class PrimaryButton extends StatelessWidget {
  /// Creates A Primary Button.
  ///
  /// the either both of [text] and [child] cannot be null or null.
  const PrimaryButton({
    Key? key,
    this.child,
    this.text,
    this.onPressed,
    this.borderRadius,
  })  : assert(text == null || child == null, 'One of them must be null.'),
        assert(child != null || text != null, 'One of them must not be null.'),
        super(key: key);

  /// If null describe this button is disabled.
  ///
  /// Defaults to null.
  final VoidCallback? onPressed;

  /// Either [child] or [text] must not be null.
  ///
  /// Specify child for dynamic content.
  final Widget? child;

  /// Whether button has text content.
  final String? text;

  final BorderRadius? borderRadius;

  @override
  Widget build(BuildContext context) {
    final enabled = onPressed != null;
    final theme = Theme.of(context);
    return Container(
      decoration: BoxDecoration(
        color: enabled ? theme.colorScheme.primary : theme.disabledColor,
        borderRadius: borderRadius ?? BorderRadius.circular(6),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(6),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: onPressed,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text.toString(),
                style: theme.textTheme.button?.copyWith(
                  color: theme.colorScheme.background,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
