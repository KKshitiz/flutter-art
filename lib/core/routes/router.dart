import 'package:auto_route/annotations.dart';
import 'package:flutter_art/nokia-phone/nokia_phone_page.dart';
import 'package:flutter_art/watch/watch_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: "Page,Route",
  routes: <AutoRoute>[
    AutoRoute(page: NokiaPhonePage),
    AutoRoute(page: WatchPage, initial: true),
  ],
)
class $AppRouter {}
