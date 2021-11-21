// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_spacer.dart';

/// Area Space Widget.
class AreaSpace extends StatelessWidget implements Spacer {
  /// Creates Area Space Widget.
  const AreaSpace({
    Key? key,
    this.size,
  }) : super(key: key);

  /// Area Size
  final double? size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getSize(),
      width: getSize(),
    );
  }

  @override
  double getSize() {
    return size!;
  }
}
