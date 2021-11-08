// Created by Muhamad Fauzi Ridwan on 08/11/21.

part of '_indicator.dart';

/// A dot indicator
class DotIndicator extends StatelessWidget {
  /// Creates Dot Indicator.
  const DotIndicator({
    Key? key,
    required this.currentIndex,
    required this.length,
    this.activeColor,
    this.expandedSize = 10,
  }) : super(key: key);

  /// Specify the current index
  final int currentIndex;
  final int length;
  final Color? activeColor;
  final double expandedSize;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(3, (index) {
        final selected = currentIndex == index;
        return AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          height: 8,
          width: selected ? 8 + expandedSize : 8,
          margin: const EdgeInsets.only(right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: selected
                ? activeColor ?? theme.colorScheme.primary
                : theme.disabledColor,
          ),
        );
      }),
    );
  }
}
