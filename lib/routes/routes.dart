import 'package:auto_route/auto_route.dart';
import 'package:play_around/ui/estimator/screens/estimator_screen.dart';
import 'package:play_around/ui/food/screen/food_screen.dart';
import 'package:play_around/ui/screens/home_screen.dart';
import 'package:play_around/ui/screens/item_screen.dart';
import 'package:play_around/ui/screens/items_screen.dart';
import 'package:play_around/ui/screens/second_screen.dart';
import 'package:play_around/ui/screens/not_found_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: HomeScreen,
    ),
    AutoRoute(page: SecondScreen, path: 'second'),
    AutoRoute(
      page: ItemsScreen,
      path: 'items',
    ),
    AutoRoute(
      page: EstimatorScreen,
      path: 'estimator',
    ),
    AutoRoute(
      page: FoodScreen,
      path: 'food',
      initial: true,
    ),
    AutoRoute(page: ItemScreen, path: 'items/:lineItemId'),
    AutoRoute(page: NotFoundScreen, path: '404'),
  ],
)
class $AppRouter {}

// flutter packages pub run build_runner build