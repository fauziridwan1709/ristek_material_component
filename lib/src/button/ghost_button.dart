// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_button.dart';

class GhostButton extends StatelessWidget {
  const GhostButton({
    Key? key,
    this.child,
    this.text,
    this.onPressed,
    this.borderRadius,
  })  : assert(text == null || child == null, 'tardada'),
        assert(child != null || text != null, 'tardada'),
        super(key: key);

  final VoidCallback? onPressed;
  final Widget? child;
  final String? text;
  final BorderRadius? borderRadius;

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
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                text.toString(),
                style: theme.textTheme.button?.copyWith(
                  color:
                      enabled ? theme.colorScheme.primary : theme.disabledColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
