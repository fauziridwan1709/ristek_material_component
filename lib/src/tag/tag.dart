// Created by Muhamad Fauzi Ridwan on 08/11/21.

part of '_tag.dart';

/// A TagStatus enum
enum TagStatus {
  normal,
  approved,
  pending,
  rejected,
}

/// A Tag Widget
class Tag extends StatelessWidget {
  /// Creates Tag Widget
  const Tag({
    Key? key,
    required this.label,
    this.state = TagStatus.normal,
  }) : super(key: key);

  /// Specify the label text
  final String label;

  /// Defaults to [TagStatus.normal]
  final TagStatus state;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: state == TagStatus.normal ? 16 : 8,
        vertical: state == TagStatus.normal ? 8 : 4,
      ),
      decoration: BoxDecoration(
        color: _mapColor(context, state),
        borderRadius: BorderRadius.circular(400),
      ),
      child: Text(
        label,
        style: theme.textTheme.button?.copyWith(
          fontSize: 10,
          color: state == TagStatus.normal
              ? theme.colorScheme.secondary
              : Colors.white,
        ),
      ),
    );
  }

  /// Mapping color base on state
  Color _mapColor(BuildContext context, TagStatus state) {
    final theme = Theme.of(context);
    switch (state) {
      case TagStatus.normal:
        return theme.disabledColor.withOpacity(.1);
      case TagStatus.approved:
        return Color(0xFF27AE60);
      case TagStatus.pending:
        return theme.secondaryHeaderColor;
      case TagStatus.rejected:
        return theme.colorScheme.error;
    }
  }
}
