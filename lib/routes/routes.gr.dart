// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../ui/calendar/screens/calendar_screen.dart' as _i1;
import '../ui/estimator/screens/estimator_screen.dart' as _i5;
import '../ui/food/screen/food_screen.dart' as _i6;
import '../ui/screens/home_screen.dart' as _i2;
import '../ui/screens/item_screen.dart' as _i7;
import '../ui/screens/items_screen.dart' as _i4;
import '../ui/screens/not_found_screen.dart' as _i8;
import '../ui/screens/second_screen.dart' as _i3;

class AppRouter extends _i9.RootStackRouter {
  AppRouter([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    CalendarRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.CalendarScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.HomeScreen(),
      );
    },
    SecondRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.SecondScreen(),
      );
    },
    ItemsRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.ItemsScreen(),
      );
    },
    EstimatorRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.EstimatorScreen(),
      );
    },
    FoodRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.FoodScreen(),
      );
    },
    ItemRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<ItemRouteArgs>(
          orElse: () =>
              ItemRouteArgs(lineItemId: pathParams.getInt('lineItemId')));
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i7.ItemScreen(
          key: args.key,
          lineItemId: args.lineItemId,
        ),
      );
    },
    NotFoundRoute.name: (routeData) {
      return _i9.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.NotFoundScreen(),
      );
    },
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: 'calendar',
          fullMatch: true,
        ),
        _i9.RouteConfig(
          CalendarRoute.name,
          path: 'calendar',
        ),
        _i9.RouteConfig(
          HomeRoute.name,
          path: '/home-screen',
        ),
        _i9.RouteConfig(
          SecondRoute.name,
          path: 'second',
        ),
        _i9.RouteConfig(
          ItemsRoute.name,
          path: 'items',
        ),
        _i9.RouteConfig(
          EstimatorRoute.name,
          path: 'estimator',
        ),
        _i9.RouteConfig(
          FoodRoute.name,
          path: 'food',
        ),
        _i9.RouteConfig(
          ItemRoute.name,
          path: 'items/:lineItemId',
        ),
        _i9.RouteConfig(
          NotFoundRoute.name,
          path: '404',
        ),
      ];
}

/// generated route for
/// [_i1.CalendarScreen]
class CalendarRoute extends _i9.PageRouteInfo<void> {
  const CalendarRoute()
      : super(
          CalendarRoute.name,
          path: 'calendar',
        );

  static const String name = 'CalendarRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i9.PageRouteInfo<void> {
  const HomeRoute()
      : super(
          HomeRoute.name,
          path: '/home-screen',
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.SecondScreen]
class SecondRoute extends _i9.PageRouteInfo<void> {
  const SecondRoute()
      : super(
          SecondRoute.name,
          path: 'second',
        );

  static const String name = 'SecondRoute';
}

/// generated route for
/// [_i4.ItemsScreen]
class ItemsRoute extends _i9.PageRouteInfo<void> {
  const ItemsRoute()
      : super(
          ItemsRoute.name,
          path: 'items',
        );

  static const String name = 'ItemsRoute';
}

/// generated route for
/// [_i5.EstimatorScreen]
class EstimatorRoute extends _i9.PageRouteInfo<void> {
  const EstimatorRoute()
      : super(
          EstimatorRoute.name,
          path: 'estimator',
        );

  static const String name = 'EstimatorRoute';
}

/// generated route for
/// [_i6.FoodScreen]
class FoodRoute extends _i9.PageRouteInfo<void> {
  const FoodRoute()
      : super(
          FoodRoute.name,
          path: 'food',
        );

  static const String name = 'FoodRoute';
}

/// generated route for
/// [_i7.ItemScreen]
class ItemRoute extends _i9.PageRouteInfo<ItemRouteArgs> {
  ItemRoute({
    _i10.Key? key,
    required int lineItemId,
  }) : super(
          ItemRoute.name,
          path: 'items/:lineItemId',
          args: ItemRouteArgs(
            key: key,
            lineItemId: lineItemId,
          ),
          rawPathParams: {'lineItemId': lineItemId},
        );

  static const String name = 'ItemRoute';
}

class ItemRouteArgs {
  const ItemRouteArgs({
    this.key,
    required this.lineItemId,
  });

  final _i10.Key? key;

  final int lineItemId;

  @override
  String toString() {
    return 'ItemRouteArgs{key: $key, lineItemId: $lineItemId}';
  }
}

/// generated route for
/// [_i8.NotFoundScreen]
class NotFoundRoute extends _i9.PageRouteInfo<void> {
  const NotFoundRoute()
      : super(
          NotFoundRoute.name,
          path: '404',
        );

  static const String name = 'NotFoundRoute';
}
