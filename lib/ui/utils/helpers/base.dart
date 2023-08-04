import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_builder/responsive_builder.dart';
// import 'package:spice/framework/extension/context_extensions.dart';

mixin BaseStatefulWidget<Page extends StatefulWidget> on State<Page> {
  @override
  void initState() {
    debugPrint('BasicPage initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // debugPrint('isMobileScreen=>${context.isMobileScreen}');
    // debugPrint('isWebScreen=>${context.isWebScreen}');
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        debugPrint('ScreenTypeLayout mobile BaseStatefulWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(375, 815),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
      desktop: (BuildContext context) {
        debugPrint('ScreenTypeLayout desktop BaseStatefulWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(1366, 768),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
    );
  }

  Widget buildPage(BuildContext context);
}

mixin BaseStatelessWidget on StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        debugPrint('ScreenTypeLayout mobile BaseStatelessWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(375, 815),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
      desktop: (BuildContext context) {
        debugPrint('ScreenTypeLayout desktop BaseStatelessWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(1366, 768),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
    );
  }

  Widget buildPage(BuildContext context);
}

mixin BaseConsumerWidget on ConsumerWidget {
  @override
  Widget build(BuildContext context, ref) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        debugPrint('ScreenTypeLayout mobile BaseConsumerWidget');
        ScreenUtil.init(
            context,
            designSize: const Size(375, 815),
            minTextAdapt: true
        );
        return buildPage(context, ref);
      },
      desktop: (BuildContext context) {
        debugPrint('ScreenTypeLayout desktop BaseConsumerWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(1366, 768),
          minTextAdapt: true,
        );
        return buildPage(context, ref);
      },
    );
  }

  Widget buildPage(BuildContext context, WidgetRef ref);
}

mixin BaseConsumerWidgetStateFullWidget<Page extends ConsumerStatefulWidget>
on State<Page> {
  @override
  void initState() {
    debugPrint('BasicPage initState');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        debugPrint('ScreenTypeLayout mobile BaseConsumerWidgetStateFullWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(375, 815),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
      desktop: (BuildContext context) {
        debugPrint('ScreenTypeLayout desktop BaseConsumerWidgetStateFullWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(1366, 768),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
    );
  }

  Widget buildPage(BuildContext context);
}

mixin BaseConsumerStatefulWidget<Page extends ConsumerStatefulWidget> on State<Page> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (BuildContext context) {
        debugPrint('ScreenTypeLayout mobile BaseConsumerStatefulWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(375, 815),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
      desktop: (BuildContext context) {
        debugPrint('ScreenTypeLayout desktop BaseConsumerStatefulWidget');
        ScreenUtil.init(
          context,
          designSize: const Size(1366, 768),
          minTextAdapt: true,
        );
        return buildPage(context);
      },
    );
  }

  Widget buildPage(BuildContext context);
}