import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_shop/core_ui/app_colors.dart';
import 'package:intl/intl.dart';

import '../../../../../home_feature.dart';

class SubItem extends HookConsumerWidget {
  const SubItem({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var enter = useState(false);
    double sizeF = 13;
    var widthS = MediaQuery.of(context).size.width;
    var heightS = MediaQuery.of(context).size.height;
    sizeF = heightS > widthS * 1.2 ? 12 : 15;
    return MouseRegion(
      onEnter: (e) {
        enter.value = true;
      },
      onExit: (e) {
        enter.value = false;
      },
      child: GestureDetector(
        onTap: (){
          Navigator.pushNamed(context, Sell.routeName);
        },
        child: Container(
        margin: const EdgeInsets.all(5.9),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
          border: Border.fromBorderSide(
            BorderSide(
              // ignore: dead_code
              color: enter.value
                  ? AppColors.vBrandColorRed
                  : AppColors.vBackGroundColorAll,
              width: 1,
              style: BorderStyle.solid,
            ),
          ),
          color: AppColors.vWhite,
        ),
        child: Stack(children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(4),
                      topLeft: Radius.circular(4)),
                  child: Image.asset("assets/images/items/1.jfif",
                      fit: BoxFit.fitWidth)),
              Container(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(fontSize: sizeF + 4),
                    "Bộ bàn ăn mặt đá hiện đại, bàn mặt đá CERAMIC khung sắt sơn tĩnh điện phong các bắc âu - Bảo hàng 12 tháng",
                  )),
              Container(
                  padding: const EdgeInsets.only(left: 5, right: 5, bottom: 0),
                  child: Column(
                    children: [
                      flex(
                        context,
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
                      ),
                      const SizedBox(height: 3),
                      StarRating(
                        rating: 4.0 + Random().nextInt(2) * 0.5,
                        color: Colors.yellow,
                        onRatingChanged: (double rating) {},
                        // onRatingChanged: (rating) => setState(() => this.rating = rating),
                      ),
                      const SizedBox(height: 3),
                      Text(
                        "Toàn quốc",
                        style: TextStyle(fontSize: sizeF),
                      )
                    ],
                  )),
            ],
          ),
          Positioned(top: 0, right: 0, child: CustomRectangle())
        ]),
      ),
      ),
    );
  }

  Widget flex(BuildContext context, Widget w1, Widget w2) {
    var widthS = MediaQuery.of(context).size.width;
    var heightS = MediaQuery.of(context).size.height;
    return heightS > widthS * 1.2
        ? Column(children: [w1, const SizedBox(height: 3), w2])
        : Row(children: [w1, const SizedBox(width: 10), w2]);
  }
}
