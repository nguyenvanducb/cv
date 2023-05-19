import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_shop/custom_pop_up_menu/src/custom_pop_up_menu.dart';

import '../../../../../../../core_ui/app_colors.dart';

// ignore: must_be_immutable
class HomeDialog extends HookConsumerWidget {
  HomeDialog({Key? key, this.widget, required this.click, this.title = ''})
      : super(key: key);

  Widget? widget;
  final VoidCallback click;
  final String title;
  final CustomPopupMenuController _controller = CustomPopupMenuController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var checked = useState(false);
    return CustomPopupMenu(
        arrowColor: AppColors.vNeutralColor1.withOpacity(0.8),
        // arrowSize: 15,
        checked: checked.value,
        arrowSize: 0,
        menuBuilder: () {
          return MouseRegion(
            onEnter: (PointerEvent event) {
              checked.value = true;
            },
            onExit: (PointerEvent event) {
              checked.value = false;
            },
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(4),
                  bottomRight: Radius.circular(4)),
              child: Container(
                decoration: BoxDecoration(
                    color: AppColors.vNeutralColor1.withOpacity(0.8),
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(4),
                        bottomRight: Radius.circular(4))),
                child: IntrinsicWidth(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                          behavior: HitTestBehavior.translucent,
                          // onTap: () => context.pushReplacement(RouterPaths.root),
                          child: Container(
                            padding: const EdgeInsets.only(
                                right: 16, left: 16, top: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Gap(12),
                                Flexible(
                                  child: Text("Ván MFC & Các loại ván phủ",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white)),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Gap(16),
                        Container(
                            margin: const EdgeInsets.only(left: 42),
                            height: 0.5,
                            color: AppColors.vTextColorButtonNormal
                                .withOpacity(0.2)),
                        const Gap(16),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 16, left: 16, bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: const <Widget>[
                                Gap(12),
                                Flexible(
                                  child: Text("Sản gỗ công nghiệp",
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(color: Colors.white)),
                                )
                              ],
                            ),
                          ),
                        ),
                        const Gap(16),
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                                right: 16, left: 16, bottom: 16),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                const Gap(12),
                                Flexible(
                                  child: Text(title,
                                      textAlign: TextAlign.center,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          const TextStyle(color: Colors.white)),
                                )
                              ],
                            ),
                          ),
                        ),
                      ]),
                ),
              ),
            ),
          );
        },
        pressType: PressType.singleClick,
        verticalMargin: 0,
        controller: _controller,
        menuOnChange: (bool? value) {
          //_controller.hideMenu();
          click();
        },
        child: Container(child: widget));
  }
}
