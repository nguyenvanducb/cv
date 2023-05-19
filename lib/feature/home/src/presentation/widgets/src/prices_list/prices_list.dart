
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_shop/core_ui/app_colors.dart';

import '../../../../../home_feature.dart';

class PricesList extends HookConsumerWidget {
  const PricesList({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var widthSize = MediaQuery.of(context).size.width;
    var heighSize = MediaQuery.of(context).size.height;
    int rowCount = 5;
    rowCount = widthSize ~/ 295.59;
    if (rowCount < 2) rowCount = 2;
    return Row(
      children: [
        if (widthSize > heighSize) Expanded(flex: 1, child: Container()),
        Expanded(
            flex: 4,
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.all(20),
                color: AppColors.vBackGroundColorAll,
                width: 998.59,
                height: 336 * (50 / 5 + 1),
                // padding: const EdgeInsets.only(right: 10.0, left: 10),
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 1 / 1.68,
                      crossAxisCount: rowCount,
                      mainAxisSpacing: 0,
                    ),
                    scrollDirection: Axis.vertical,
                    physics: const NeverScrollableScrollPhysics(),
                    // shrinkWrap: true,
                    itemCount: 50,
                    itemBuilder: (context, position) {
                      return const SubItem();
                    })))
      ],
    );
  }
}
