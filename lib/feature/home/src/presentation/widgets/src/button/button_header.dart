import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_shop/feature/home/home_feature.dart';

class ButtonHeader extends HookConsumerWidget {
  final VoidCallback clear;
  final bool clicked;
  final String text;
  const ButtonHeader({
    super.key,
    required this.text,
    required this.clear,
    this.clicked = false,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var isHovering = useState(false);
    return HomeDialog(
      title: text,
      widget: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.only(left: 9, right: 9),
        margin: const EdgeInsets.only(left: 1, right: 1),
        height: 42,
        decoration: BoxDecoration(
          color: (isHovering.value || clicked)
              ? const Color(0xffFF7C46)
              : Colors.transparent,
          // borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
            fontSize: 12,
          ),
        ),
      ),
      click: () {
        clear();
      },
    );
  }
}
