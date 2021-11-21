// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_spacer.dart';

/// A Width Space Widget.
class WidthSpace extends StatelessWidget implements Spacer {
  /// Creates Width Space Widget.
  const WidthSpace(
    this.size, {
    Key? key,
  }) : super(key: key);

  /// Width space of [SizedBox]
  final double size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: getSize());
  }

  @override
  double getSize() {
    return size;
  }
}
