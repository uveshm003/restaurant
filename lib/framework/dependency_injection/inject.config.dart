// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flutter/material.dart' as _i8;
import 'package:flutter_riverpod/flutter_riverpod.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:restaurant/framework/controllers/home_controller.dart' as _i3;
import 'package:restaurant/ui/routing/delegate.dart' as _i4;
import 'package:restaurant/ui/routing/navigation_stack_item.dart' as _i9;
import 'package:restaurant/ui/routing/parser.dart' as _i6;
import 'package:restaurant/ui/routing/stack.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.factory<_i3.HomeController>(() => _i3.HomeController());
    gh.factoryParam<_i4.MainRouterDelegate, _i5.NavigationStack, dynamic>((
      stack,
      _,
    ) =>
        _i4.MainRouterDelegate(stack));
    gh.factoryParam<_i6.MainRouterInformationParser, _i7.WidgetRef,
        _i8.BuildContext>((
      ref,
      context,
    ) =>
        _i6.MainRouterInformationParser(
          ref,
          context,
        ));
    gh.factoryParam<_i5.NavigationStack, List<_i9.NavigationStackItem>,
        dynamic>((
      items,
      _,
    ) =>
        _i5.NavigationStack(items));
    return this;
  }
}
