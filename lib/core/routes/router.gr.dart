// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../nokia-phone/nokia_phone_page.dart' as _i2;
import '../../watch/watch_page.dart' as _i3;
import '../pages/base_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    BaseRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.BasePage());
    },
    NokiaPhoneRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.NokiaPhonePage());
    },
    WatchRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.WatchPage());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(BaseRoute.name, path: '/'),
        _i4.RouteConfig(NokiaPhoneRoute.name, path: '/nokia-phone-page'),
        _i4.RouteConfig(WatchRoute.name, path: '/watch-page')
      ];
}

/// generated route for
/// [_i1.BasePage]
class BaseRoute extends _i4.PageRouteInfo<void> {
  const BaseRoute() : super(BaseRoute.name, path: '/');

  static const String name = 'BaseRoute';
}

/// generated route for
/// [_i2.NokiaPhonePage]
class NokiaPhoneRoute extends _i4.PageRouteInfo<void> {
  const NokiaPhoneRoute()
      : super(NokiaPhoneRoute.name, path: '/nokia-phone-page');

  static const String name = 'NokiaPhoneRoute';
}

/// generated route for
/// [_i3.WatchPage]
class WatchRoute extends _i4.PageRouteInfo<void> {
  const WatchRoute() : super(WatchRoute.name, path: '/watch-page');

  static const String name = 'WatchRoute';
}
