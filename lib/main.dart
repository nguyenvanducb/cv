import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_shop/routes.dart';
import 'package:my_shop/theme.dart';
import 'package:upgrader/upgrader.dart';

import 'feature/home/home_feature.dart';
import 'firebase_options.dart';

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // getNotify();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // showFlutterNotification(message);
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  print('Handling a background message ${message.messageId}');
}

/// Initialize the [FlutterLocalNotificationsPlugin] package.
late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // xử lý firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  // Set the background messaging handler early on, as a named top-level function
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  //xử lý firebase
  await Upgrader.clearSavedSettings();
  runApp(
    const ProviderScope(
      child: TopNovelApp(),
    )
  );
}

class TopNovelApp extends StatefulWidget {
  const TopNovelApp({super.key});
  static FirebaseAnalytics analytics = FirebaseAnalytics.instance;
  @override
  State<StatefulWidget> createState() => _TopNovel();
}

class _TopNovel extends State<TopNovelApp> {
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Route<dynamic> _onGenerateRoute(RouteSettings settings) {
    final PageContentBuilder? pageContentBuilder = routes[settings.name];
    final dynamic arg = settings.arguments;
    return PageRouteBuilder(
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(-1.0, 0.0);
        const end = Offset.zero;
        const curve = Curves.ease;
        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        return SlideTransition(
          position: animation.status == AnimationStatus.reverse
              ? Tween<Offset>(begin: const Offset(1.0, 0.0), end: end)
                  .animate(secondaryAnimation)
              : animation.drive(tween),
          child: child,
        );
      },
      pageBuilder: (context, __, ___) =>
          pageContentBuilder!(settings.arguments),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Company',
      theme: theme(),
      navigatorKey: navigatorKey,
      // home: BackButton(),
      initialRoute: Home.routeName,
      // initialRoute: LoginSuccessScreen.routeName,
      //routes: routes,
      onGenerateRoute: _onGenerateRoute,
    );
  }
}
