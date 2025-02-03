// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:products_ui/features/screens/menu_page.dart' as _i1;
import 'package:products_ui/features/screens/products_page/products_page.dart'
    as _i2;

/// generated route for
/// [_i1.MenuPage]
class MenuRoute extends _i3.PageRouteInfo<MenuRouteArgs> {
  MenuRoute({_i4.Key? key, List<_i3.PageRouteInfo>? children})
    : super(
        MenuRoute.name,
        args: MenuRouteArgs(key: key),
        initialChildren: children,
      );

  static const String name = 'MenuRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<MenuRouteArgs>(
        orElse: () => const MenuRouteArgs(),
      );
      return _i1.MenuPage(key: args.key);
    },
  );
}

class MenuRouteArgs {
  const MenuRouteArgs({this.key});

  final _i4.Key? key;

  @override
  String toString() {
    return 'MenuRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i2.ProductsPage]
class ProductsRoute extends _i3.PageRouteInfo<void> {
  const ProductsRoute({List<_i3.PageRouteInfo>? children})
    : super(ProductsRoute.name, initialChildren: children);

  static const String name = 'ProductsRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.ProductsPage();
    },
  );
}
