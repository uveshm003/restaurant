import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:restaurant/framework/dependency_injection/inject.dart';
import 'package:restaurant/ui/routing/delegate.dart';
import 'package:restaurant/ui/routing/parser.dart';
import 'package:restaurant/ui/routing/stack.dart';


Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await configureMainDependencies(environment: Env.dev);
  runApp(const ProviderScope(
    child: MyApp(),
  ));
}

class MyApp extends ConsumerStatefulWidget {
  const MyApp({super.key});

  @override
  ConsumerState<MyApp> createState() => _MyAppState();
}

class _MyAppState extends ConsumerState<MyApp> {
  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerDelegate: getIt<MainRouterDelegate>(
                param1: ref.read(navigationStackController)),
            routeInformationParser: getIt<MainRouterInformationParser>(
                param1: ref, param2: context),
          );

  }
}