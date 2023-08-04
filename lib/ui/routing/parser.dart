import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:injectable/injectable.dart';
import 'package:restaurant/ui/routing/navigation_stack_item.dart';
import 'package:restaurant/ui/routing/navigation_stack_keys.dart';
import 'package:restaurant/ui/routing/stack.dart';

@injectable
class MainRouterInformationParser
    extends RouteInformationParser<NavigationStack> {
  WidgetRef ref;
  BuildContext context;

  MainRouterInformationParser(
      @factoryParam this.ref, @factoryParam this.context);

  @override
  Future<NavigationStack> parseRouteInformation(
      RouteInformation routeInformation) async {
    debugPrint('........URL......${routeInformation.location}');

    final Uri uri = Uri.parse(routeInformation.location ?? '');

    final items = <NavigationStackItem>[];
    debugPrint('Stack Item Count - ${items.length}');
    // String? langStr = queryParams['lang'];

    // if (langStr != null) {
    //   await context.setLocale(Locale(langStr == "english" ? "en" : "hi"));
    // }

    for (var i = 0; i < uri.pathSegments.length; i = i + 1) {
      final key = uri.pathSegments[i];

      switch (key) {
        case Keys.home:
          items.add(const NavigationStackItem.home());
          break;
      }
    }
    if (items.isEmpty) {
      const fallback =
          NavigationStackItem.home();
      if (items.isNotEmpty && items.first is NavigationStackItemHome) {
        items[0] = fallback;
      } else {
        items.insert(0, fallback);
      }
    }
    return NavigationStack(items);
  }

  ///THIS IS IMPORTANT: Here we restore the web history
  @override
  RouteInformation restoreRouteInformation(NavigationStack configuration) {
    final location =
        configuration.items.fold<String>('', (previousValue, element) {
      return previousValue +
          element.when(
            home: () => '/${Keys.home}',
          ).toString();
    });

    ///Return null will be stay in first route page  , if we reached first page then location will empty
    return RouteInformation(location: location);
  }
}

