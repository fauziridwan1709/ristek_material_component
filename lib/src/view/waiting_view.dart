// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_view.dart';

/// a waiting view for waiting state on states rebuilder.
class WaitingView extends StatelessWidget {
  WaitingView({
    this.shrinkWrap = false,
  });

  final bool shrinkWrap;

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: shrinkWrap,
      children: [],
    );
  }
}
