import 'package:flutter/material.dart';

import 'card_button.dart';

class CardToggler extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> setIndex;
  final List<CardButton> children;
  final Widget child;
  const CardToggler({
    Key key,
    this.currentIndex,
    this.children,
    this.setIndex,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        child,
        IntrinsicHeight(
          child: Container(
            width: 325,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(32),
                bottomRight: Radius.circular(32),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              mainAxisSize: MainAxisSize.min,
              children: List.generate(
                children.length ?? 0,
                (index) => CardButton(
                  label: children[index].label,
                  icon: children[index].icon,
                  onTap: () {
                    children[index].onTap();
                    setIndex(children.indexOf(children[index]));
                  },
                  currentIndex: children.indexOf(children[index]),
                  isSelected: currentIndex == children.indexOf(children[index]),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
