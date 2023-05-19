import 'package:flutter/material.dart';

/// Defines the color palette for the App UI Kit.
abstract class AppColors {
  static Color? hexColor(String colorCode) {
    var color = colorCode.toUpperCase().replaceAll("#", "");
    if (color.length == 6) {
      color = "FF$color";
    }
    if (color.length == 8) {
      try {
        return Color(int.parse("0x$color"));
      } catch (_) {}
    }
    return null;
  }

  /// ----------------------New Design------------------------\\\
  // Base
  static const vBackGroundColorButtonNormal = Color(0xffEE0033);
  static const vTextColorButtonNormal = Color(0xffFFFFFF);
  static const vTransparent = Colors.transparent;
  static const vBackGroundColorAll = Color(0xffff5f5f5);
  static const vDiscount = Color(0xffff6c809);

  static const vNeutralColor1 = Color(0xff000000);

  // Brand
  static const vBrandColorRed = Color(0xffEE0033);
  static const vBrandColorRed50 = Color(0x80EE0033);
  static const vBrandColorRed30 = Color(0x4dEE0033);
  static const vBrandColorRed10 = Color(0x1aEE0033);
  static const vBrandColorWhite = Color(0xffFFFFFF);

  // Secondary
  static const vSecondaryColorGreen = Color(0xff2DB2A2);
  static const vSecondaryColorBlue = Color(0xff007AFF);
  static const vSecondaryColorOrange = Color(0xffFF5D02);

  // Neutral

  static const vNeutralColor2 = Color(0xff44494D);
  static const vNeutralColor25 = Color(0xff82878B);
  static const vNeutralColor3 = Color(0xffB5B4B4);
  static const vNeutralColor35 = Color(0xffD3D2D2);
  static const vNeutralColor4 = Color(0xffF2F2F2);
  static const vNeutralColor45 = Color(0xffF6F6F6);

  // Yellow
  static const vYellowColor600 = Color(0xffFFBA0A);
  static const vYellowColor500 = Color(0xffFFD60A);
  static const vYellowColor400 = Color(0xffFEE440);

  // Ink
  static const vInk500 = Color(0xff22313F); // rgb(34, 49, 63)
  static const vInk400 = Color.fromRGBO(1, 18, 34, 0.5); // #0112227F
  static const vInk300 = Color.fromRGBO(1, 18, 34, 0.3); // #0112224C
  static const vInk200 = Color.fromRGBO(1, 18, 34, 0.1); // #01122219
  static const vInk100 = Color.fromRGBO(1, 18, 34, 0.05); // #0112220C
  // Black
  static const vBlack = Color.fromRGBO(0, 0, 0, 1);
  static const vBlack500 = Color.fromRGBO(0, 0, 0, 0.8); // #000000CC
  static const vBlack400 = Color.fromRGBO(0, 0, 0, 0.7); // #000000B2
  static const vBlack300 = Color.fromRGBO(0, 0, 0, 0.4); // #00000066
  static const vBlack200 = Color.fromRGBO(0, 0, 0, 0.3); // #0000004C
  static const vBlack100 = Color.fromRGBO(0, 0, 0, 0.1); // #00000019
  // White
  static const vWhite = Colors.white; // #FFFFFF
  static const vWhite500 = Color.fromRGBO(255, 255, 255, 1); // #FFFFFF
  static const vWhite400 = Color.fromRGBO(255, 255, 255, 0.7); // #FFFFFFB2
  static const vWhite300 = Color.fromRGBO(255, 255, 255, 0.4); // #FFFFFF66
  static const vWhite200 = Color.fromRGBO(255, 255, 255, 0.3); // #FFFFFF4C
  static const vWhite100 = Color.fromRGBO(255, 255, 255, 0.1); // #FFFFFF19

  static const vWhiteBox = Color(0xfff6f6f6);
  static const vWhiteBorder = Color(0xffdad9d9);
  static const vhintText = Color(0xffB5B4B4);
  static const vlabelText = Color(0xff44494D);
  static const vIcon = Color(0xff82878B);
  static const vBlackText = Color(0xff000000);

  /// Functional Color Palette
  // -- Blue - Emotions [Useful]: display information content.
  static const vBlue500 = Color.fromRGBO(47, 107, 255, 1); // #2F6BFF
  static const vBlue400 = Color.fromRGBO(47, 107, 255, 0.8); // #2F6BFFCC
  static const vBlue300 = Color.fromRGBO(47, 107, 255, 0.3); // #2F6BFF4C
  static const vBlue200 = Color.fromRGBO(47, 107, 255, 0.1); // #2F6BFF19
  static const vBlue100 = Color.fromRGBO(47, 107, 255, 0.05); // #2F6BFF0C
  // -- Green - Emotion [Positive]: display successful content.
  static const vGreen500 = Color.fromRGBO(0, 188, 60, 1); // #00BC3C
  static const vGreen400 = Color.fromRGBO(0, 188, 60, 0.8); // #00BC3CCC
  static const vGreen300 = Color.fromRGBO(0, 188, 60, 0.3); // #00BC3C4C
  static const vGreen200 = Color.fromRGBO(0, 188, 60, 0.1); // #00BC3C19
  static const vGreen100 = Color.fromRGBO(0, 188, 60, 0.05); // #00BC3C0C
  // -- Orange - Emotion [Careful]: display successful content.
  static const vOrange500 = Color.fromRGBO(255, 130, 30, 1); // #FF821E
  static const vOrange400 = Color.fromRGBO(255, 130, 30, 0.8); // #FF821ECC
  static const vOrange300 = Color.fromRGBO(255, 130, 30, 0.3); // #FF821E4C
  static const vOrange200 = Color.fromRGBO(255, 130, 30, 0.1); // #FF821E19
  static const vOrange100 = Color.fromRGBO(255, 130, 30, 0.05); // #FF821E0C
  // -- Red - Emotion [Stressful]: display successful content.
  static const vRed500 = Color.fromRGBO(230, 10, 50, 1); // #E60A32
  static const vRed400 = Color.fromRGBO(230, 10, 50, 0.8); // #E60A32CC
  static const vRed300 = Color.fromRGBO(230, 10, 50, 0.3); // #E60A324C
  static const vRed200 = Color.fromRGBO(230, 10, 50, 0.1); // #E60A3219
  static const vRed100 = Color.fromRGBO(230, 10, 50, 0.05); // #E60A320C

  /// Support Color
  static const vBackGroundLight = Color.fromRGBO(250, 253, 255, 1); // #FAFDFF
  static const vBackGroundDark = Color.fromRGBO(242, 243, 244, 1); // #F2F3F4
  static const vPlaceholder = Color.fromRGBO(232, 237, 243, 1); // #E8EDF3

  // linear-gradient(rgba(230, 231, 233, 1.0) 0%, rgba(249, 249, 249, 1.0) 100%)
  static const vSkeletonStart = Color.fromRGBO(230, 231, 233, 1);
  static const vSkeletonEnd = Color.fromRGBO(249, 249, 249, 1);

  // linear-gradient(rgba(0, 0, 0, 0.5) 0%, rgba(0, 0, 0, 0) 100%)
  static const vGradient50TopStart = Color.fromRGBO(0, 0, 0, 0.5);
  static const vGradient50TopEnd = Color.fromRGBO(0, 0, 0, 0);

  // linear-gradient(rgba(0, 0, 0, 0) 0%, rgba(0, 0, 0, 0.5) 100%)
  static const vGradient50BotStart = Color.fromRGBO(0, 0, 0, 0);
  static const vGradient50BotEnd = Color.fromRGBO(0, 0, 0, 0.5);

  //0.0px 2.0px 4.0px 0px rgba(1, 18, 34, 0.1)
  static const vShadow = Color.fromRGBO(1, 18, 34, 0.1);

  static const vSnackMessage = Color(0xff22313F);


    /// border :-------------------------------------
  static const vBorderNormal = Color(0xffEBF0FF);

  /// ----------------------New Design------------------------\\\
  static const vBgPrimary = Color.fromRGBO(0xe9, 0xe9, 0xe9 , 1);
  static const vNeutral40 = Color.fromRGBO(0xF2, 0xF2, 0xF2, 1);
  static const vNeutral35 = Color.fromRGBO(0xDA, 0xD9, 0xD9, 1);
  static const vBgTime = Color(0xF2F2F2FF);

  // color of status order
  static const vOrderWaiting = Color.fromRGBO(255, 0x5d, 0x02, 1);
  static const vOrderConfirm = Color.fromRGBO(0, 0x7a, 255, 1);
  static const vOrderSuccess = Color.fromRGBO(0x2d, 0xb2, 0xa2, 1);
  
  // color of vertical divider
 static const vVerticalDivider = Color.fromRGBO(218, 217, 217, 1);
}
