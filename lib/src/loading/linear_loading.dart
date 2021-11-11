// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_loading.dart';

/// A linear loading widget.
class LinearLoading extends StatelessWidget {
  /// Creates a linear loading.
  const LinearLoading({
    Key? key,
    this.valueColor,
  }) : super(key: key);

  final Color? valueColor;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return LinearProgressIndicator(
      valueColor:
          AlwaysStoppedAnimation(valueColor ?? theme.colorScheme.primary),
    );
  }
}
