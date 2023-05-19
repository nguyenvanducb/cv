import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../../core_ui/app_colors.dart';
import '../../../../home_feature.dart';

class MyLayoutPage extends StatefulWidget {
  const MyLayoutPage(
      {Key? key,
      // this.appbar = const AppBarEmpty(),
      this.padding = EdgeInsets.zero,
      this.margin = EdgeInsets.zero,
      this.isScroll = false,
      required this.child,
      this.bottomButon = const SizedBox(),
      this.floatingActionButton,
      this.backgroundColor = AppColors.vNeutralColor4,
      this.scrollController,
      this.bottomFinal = true})
      : super(key: key);

  /// Appbar widget, default is [VAppBarEmpty]
  // final PreferredSizeWidget appbar;

  /// [padding] adds the [EdgeInsetsGeometry] to given [child].
  ///
  /// Defaults to `const EdgeInsets.all(16)`.
  final EdgeInsetsGeometry padding;

  /// [margin] adds the [EdgeInsetsGeometry] to given [child].
  ///
  /// Defaults to `EdgeInsets.zero`.
  final EdgeInsetsGeometry margin;

  final bool bottomFinal;

  final bool isScroll;

  final Widget child;

  final Widget bottomButon;

  final Widget? floatingActionButton;

  /// background color, default is [Colors.white]
  final Color backgroundColor;

  final ScrollController? scrollController;

  // const VMyLayoutPage({Key? key}) : super(key: key);

  @override
  State<MyLayoutPage> createState() => _MyLayoutPageState();
}

class _MyLayoutPageState extends State<MyLayoutPage>
    with WidgetsBindingObserver {
  bool _isKeyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;

    return Scaffold(
      backgroundColor: widget.backgroundColor,
      resizeToAvoidBottomInset: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
      // floatingActionButton: widget.floatingActionButton,
      // floatingActionButton: Container(
      //     height: 150,width: 50,
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: [
      //       Column(
      //         children: [Icon(Icons.email,color: Colors.blue, size:50,),
      //         SizedBox(height: 10,),
      //          Icon(Icons.phone,color: Colors.blue, size:50,),],
      //       )
      //     ])),

      // appBar: widget.appbar,
      body: Stack(
        children: [
          Expanded(
            child: widget.isScroll
                ? SingleChildScrollView(
                    controller: widget.scrollController,
                    physics: const BouncingScrollPhysics(),
                    child: Container(
                      padding: widget.padding,
                      margin: widget.margin,
                      child: Column(
                        children: [
                          widget.child,
                          if (!widget.bottomFinal || _isKeyboardVisible)
                            widget.bottomButon,
                          SizedBox(
                            height: bottomInset,
                            child: const OverflowBox(),
                          ),
                        ],
                      ),
                    ),
                  )
                : Container(
                    padding: widget.padding,
                    margin: widget.margin,
                    child: widget.child,
                  ),
          ),
          Container(
            height: 129,
            color: Color(0xffFEFEFE).withOpacity(0.5),
            child: Column(
              children: [
                Container(
                  height: 87,
                  color: Color(0xffFEFEFE).withOpacity(0.5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                            Image.asset(
                          "assets/images/logo.png",
                          fit: BoxFit.fitHeight,
                        ),
                        Text("Giải pháp nội thất cho mọi nhà")
                        ],),
                        Image.asset(
                          "assets/images/logo1.png",
                          fit: BoxFit.fitHeight,
                        )
                      ]),
                ),
                Container(
                  height: 42,
                  color: Color(0xff23262B).withOpacity(0.5),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 93,
                            ),
                            ButtonHeader(clear: () {}, text: "GIỚI THIỆU"),
                            ButtonHeader(clear: () {}, text: "SẢN PHẨM"),
                            ButtonHeader(clear: () {}, text: "GIẢI PHÁP"),
                            ButtonHeader(clear: () {}, text: "DỰ ÁN"),
                            ButtonHeader(clear: () {}, text: "SHOWROOM"),
                            ButtonHeader(clear: () {}, text: "YOUTUBE"),
                            ButtonHeader(clear: () {}, text: "TIN TỨC"),
                            ButtonHeader(
                                clear: () {}, text: "QUAN HỆ NHÀ ĐẦU TƯ"),
                          ],
                        ),
                        Row(
                          children: [
                            ButtonHeader(clear: () {}, text: "IDA"),
                            ButtonHeader(clear: () {}, text: "DOWNLOAD"),
                            ButtonHeader(clear: () {}, text: "LIÊN HỆ"),
                            const SizedBox(
                              width: 10
                            ),
                            ButtonHeader(clear: () {}, text: " EN  "),
                              const SizedBox(
                              width: 10
                            ),
                          ],
                        )
                      ]),
                )
              ],
            ),
          ),
          // if (widget.bottomFinal && !_isKeyboardVisible) widget.bottomButon,
        ],
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Listen to keyboard events to update `_isKeyboardVisible`
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void dispose() {
    // Stop listening to keyboard events
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeMetrics() {
    super.didChangeMetrics();
    // Update `_isKeyboardVisible` when the keyboard appears/disappears
    final bottomInset = MediaQuery.of(context).viewInsets.bottom;
    setState(() {
      _isKeyboardVisible = bottomInset > 0;
    });
  }
}
