import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../../core_ui/app_colors.dart';
import '../../../../home_feature.dart';
import 'drawer_menu.dart';

// final homeProvider = Provider((_) => Home());
class Home extends HookWidget {
  const Home({super.key});
  static String routeName = '/home';
  @override
  Widget build(BuildContext context) {
    var widthSize = MediaQuery.of(context).size.width;
    var heightSize = MediaQuery.of(context).size.height;
    return Scaffold(
        endDrawer: const Drawer(
        backgroundColor: AppColors.vBackGroundColorAll,
        child: MyDrawer(),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        floatingActionButton: SizedBox(
            height: 150,
            width: 50,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [ 
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber[900],
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/email.svg",
                            width: 50,
                            height: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Container(
                          margin: const EdgeInsets.all(5),
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber[900],
                          ),
                          child: SvgPicture.asset(
                            "assets/icons/3d.svg",
                            width: 50,
                            height: 50,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  )
                ])),
        body:Builder(
        builder: (BuildContext context) { return Stack(
          children: [
            SingleChildScrollView(
              child: Column(children: [
                Image.asset(
                  "assets/images/Khach-3-bantinac-banner.jpg",
                  fit: BoxFit.fitWidth,
                  width: MediaQuery.of(context).size.width,
                ),
                // Image.asset(
                //   "assets/images/background/1.jpg",
                //   fit: BoxFit.fitWidth,
                //   width: MediaQuery.of(context).size.width,
                // ),
                // Image.asset(
                //   "assets/images/background/2.jpg",
                //   fit: BoxFit.fitWidth,
                //   width: MediaQuery.of(context).size.width,
                // ),
                // Image.asset(
                //   "assets/images/background/3.jpg",
                //   fit: BoxFit.fitWidth,
                //   width: MediaQuery.of(context).size.width,
                // ),
                // Image.asset(
                //   "assets/images/background/4.jpg",
                //   fit: BoxFit.fitWidth,
                //   width: MediaQuery.of(context).size.width,
                // ),
                const SizedBox(
                  height: 10,
                  child: Text(""),
                ),
                const PricesList()
              ]),
            ),
            Container(
              height: 129,
              color: const Color(0xffFEFEFE).withOpacity(0.5),
              child: Column(
                children: [
                  Container(
                    height: 87,
                    color: const Color(0xffFEFEFE).withOpacity(0.5),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              if (widthSize > heightSize)
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.05 +
                                          1,
                                  color: Colors.white,
                                ),
                              Image.asset(
                                "assets/images/logo.png",
                                fit: BoxFit.fitHeight,
                              ),
                              if (heightSize < widthSize) const Text(
                                "Giải pháp nội thất cho mọi nhà",
                                maxLines: 3,
                                overflow: TextOverflow.ellipsis,
                              )
                            ],
                          ),
                          if (heightSize < widthSize)
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/logo1.png",
                                  fit: BoxFit.fitHeight,
                                ),
                                if (widthSize > heightSize)
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                            0.05 +
                                        1,
                                    color: Colors.white,
                                  ),
                              ],
                            ),
                          if (heightSize >= widthSize)
                            GestureDetector(
                              onTap: () {
                               Scaffold.of(context).openEndDrawer();
                              },
                              child: Container(
                                margin: const EdgeInsets.only(right: 10),
                                child: const Icon(
                                  Icons.menu,
                                  size: 50,
                                ),
                              ),
                            )
                        ]),
                  ),
                  const Header()
                ],
              ),
            ),
          ],
        );}));
  }
}
