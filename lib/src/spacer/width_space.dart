// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_spacer.dart';

class WidthSpace extends StatelessWidget implements Spacer {
  const WidthSpace(
    this.size, {
    Key? key,
  }) : super(key: key);

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
