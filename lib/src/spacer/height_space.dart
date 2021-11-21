// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_spacer.dart';

/// A Height Space Widget.
class HeightSpace extends StatelessWidget implements Spacer {
  /// Creates Height Space Widget.
  const HeightSpace(
    this.size, {
    Key? key,
  }) : super(key: key);

  /// height size of [SizedBox]
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: getSize());
  }

  @override
  double getSize() {
    return size;
  }
}
