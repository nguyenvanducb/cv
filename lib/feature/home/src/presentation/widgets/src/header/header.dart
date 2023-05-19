import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../../home_feature.dart';

final homeProvider = StateNotifierProvider.autoDispose<HomeNotifier, HomeState>(
    (ref) => HomeNotifier());

class Header extends HookConsumerWidget {
  const Header({Key? key}) : super(key: key);
  Widget flexWidget(Widget w1, Widget w2, {bool isTrue = false}) {
    if (defaultTargetPlatform == TargetPlatform.android ||
        defaultTargetPlatform == TargetPlatform.iOS ||
        isTrue) {
      return SingleChildScrollView(
          scrollDirection: Axis.horizontal, child: Row(children: [w1, w2]));
    }
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [w1, w2],
    );
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tab = ref.watch(homeProvider);
    var widthSize = MediaQuery.of(context).size.width;
    var heightSize = MediaQuery.of(context).size.height;
    return Container(
      height: 42,
      color: const Color(0xff23262B).withOpacity(0.5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Container(
            width: widthSize,
            child: flexWidget(
                Row(
                  children: [
                    if (widthSize > heightSize)
                      Container(
                        width: MediaQuery.of(context).size.width * 0.05,
                      ),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 0,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(0);
                        },
                        text: "GIỚI THIỆU"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 1,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(1);
                        },
                        text: "SẢN PHẨM"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 2,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(2);
                        },
                        text: "GIẢI PHÁP"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 3,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(3);
                        },
                        text: "DỰ ÁN"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 4,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(4);
                        },
                        text: "SHOWROOM"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 5,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(5);
                        },
                        text: "YOUTUBE"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 6,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(6);
                        },
                        text: "TIN TỨC"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 7,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(7);
                        },
                        text: "QUAN HỆ NHÀ ĐẦU TƯ"),
                  ],
                ),
                Row(
                  children: [
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 8,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(8);
                        },
                        text: "IDA"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 9,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(9);
                        },
                        text: "DOWNLOAD"),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 10,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(10);
                        },
                        text: "LIÊN HỆ"),
                    const SizedBox(width: 10),
                    ButtonHeader(
                        clicked: tab.selectedPackageIndex == 11,
                        clear: () {
                          ref.read(homeProvider.notifier).selectedPackage(11);
                        },
                        text: " EN  "),
                    const SizedBox(width: 10),
                  ],
                ),isTrue: heightSize>=widthSize)),
      ),
    );
  }
}
