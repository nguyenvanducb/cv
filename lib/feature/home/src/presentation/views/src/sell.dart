import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:my_shop/core_ui/app_colors.dart';
import 'package:my_shop/custom_pop_up_menu/src/custom_pop_up_menu.dart';

// ignore: must_be_immutable
class Sell extends HookConsumerWidget {
  static String routeName = '/sell';
  Sell({super.key});

  final CustomPopupMenuController _controller = CustomPopupMenuController();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var widthS = MediaQuery.of(context).size.width;
    double sizeF = 15;
    double widthR = 1240;
    double heightR = 911.6;
    return Scaffold(
        body: Container(
      alignment: Alignment.topCenter,
      color: AppColors.vBackGroundColorAll,
      width: widthS,
      child: Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(4)),
          margin: const EdgeInsets.only(top: 10),
          alignment: Alignment.topCenter,
          width: widthR,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(children: [
                  Container(
                      margin: const EdgeInsets.only(top: 10),
                      alignment: Alignment.topCenter,
                      width: 0.371*widthR,
                      height: heightR,
                      child: Image.asset("assets/images/items/2.jpg",
                          fit: BoxFit.fitWidth)),
                  Container(
                    color: AppColors.vBackGroundColorAll,
                    width: 3,
                    height: heightR+10,
                  ),
                  Container(
                    alignment: Alignment.topCenter,
                    width: 0.629* widthR  -3,
                    height: heightR,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                            margin: const EdgeInsets.only(
                                left: 5, right: 5, top: 1),
                            child: Text(
                              overflow: TextOverflow.ellipsis,
                              maxLines: 3,
                              style: TextStyle(fontSize: sizeF + 6),
                              "Bộ bàn ăn mặt đá hiện đại, bàn mặt đá CERAMIC khung sắt sơn tĩnh điện phong các bắc âu - Bảo hàng 12 tháng",
                            )),
                            SizedBox(width: 479,height: 71, child: Column(children: [
                                Text(
                            NumberFormat.currency(
                                    locale: 'vi', symbol: 'đ', decimalDigits: 0)
                                .format(111111119),
                            style: TextStyle(
                                color: AppColors.vNeutralColor25,
                                decoration: TextDecoration.lineThrough,
                                fontSize: sizeF)),
                        Text(
                            NumberFormat.currency(
                                    locale: 'vi', symbol: 'đ', decimalDigits: 0)
                                .format(900000),
                            style: TextStyle(
                                color: AppColors.vBrandColorRed,
                                fontSize: sizeF + 3)),
                            ]),)
                      ],
                    ),
                  )
                ]),
                Container(width: widthR+30,height: 5, color: AppColors.vBackGroundColorAll)
              ],
            ),
          )),
    ));
  }
}
