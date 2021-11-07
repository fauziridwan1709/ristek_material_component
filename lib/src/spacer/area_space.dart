// Created by Muhamad Fauzi Ridwan on 7/15/21.

part of '_spacer.dart';

class AreaSpace extends StatelessWidget implements Spacer {
  const AreaSpace({
    Key? key,
    this.size,
  }) : super(key: key);

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
