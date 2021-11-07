// Created by Muhamad Fauzi Ridwan on 07/11/21.

part of '_bar.dart';

class RistekBotNavBar extends StatefulWidget {
  const RistekBotNavBar({
    Key? key,
    required this.onTap,
    required this.items,
    this.initialActiveIndex = 0,
  }) : super(key: key);

  final Function(int index) onTap;
  final List<RistekBotNavItem> items;
  final int initialActiveIndex;

  @override
  _RistekBotNavBarState createState() => _RistekBotNavBarState();
}

class _RistekBotNavBarState extends State<RistekBotNavBar> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Container(
      padding: const EdgeInsets.fromLTRB(10, 15, 10, 0),
      decoration: BoxDecoration(
        color: theme.colorScheme.background,
        boxShadow: BoxShadowDecorator().defaultShadow(context),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: widget.items.map((e) {
          final isSelected =
              widget.items.indexOf(e) == widget.initialActiveIndex;
          return Expanded(
            child: InkWell(
              onTap: () => widget.onTap(widget.items.indexOf(e)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    e.icon,
                    color: isSelected
                        ? theme.colorScheme.primary
                        : theme.disabledColor,
                    size: 24,
                  ),
                  const HeightSpace(5),
                  Text(e.text.toString(),
                      style: theme.textTheme.caption?.copyWith(
                        fontWeight:
                            isSelected ? FontWeight.w500 : FontWeight.w400,
                        color: isSelected
                            ? theme.colorScheme.primary
                            : theme.disabledColor,
                      )),
                  const HeightSpace(5),
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 450),
                    curve: Curves.easeInQuad,
                    height: 5,
                    width: isSelected ? 35 : 0,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? theme.colorScheme.primary
                          : Colors.transparent,
                      borderRadius: const BorderRadius.vertical(
                        top: Radius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
