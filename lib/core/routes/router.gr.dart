// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../../nokia-phone/nokia_phone_page.dart' as _i1;
import '../../watch/watch_page.dart' as _i2;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    NokiaPhoneRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.NokiaPhonePage());
    },
    WatchRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WatchPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(NokiaPhoneRoute.name, path: '/nokia-phone-page'),
        _i3.RouteConfig(WatchRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.NokiaPhonePage]
class NokiaPhoneRoute extends _i3.PageRouteInfo<void> {
  const NokiaPhoneRoute()
      : super(NokiaPhoneRoute.name, path: '/nokia-phone-page');

  static const String name = 'NokiaPhoneRoute';
}

/// generated route for
/// [_i2.WatchPage]
class WatchRoute extends _i3.PageRouteInfo<void> {
  const WatchRoute() : super(WatchRoute.name, path: '/');

  static const String name = 'WatchRoute';
}
