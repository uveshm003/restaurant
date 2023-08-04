import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:restaurant/ui/home/mobile/home_mobile.dart';
import 'package:restaurant/ui/utils/helpers/base.dart';


class Home extends StatelessWidget with BaseStatelessWidget {
  const Home({Key? key}) : super(key: key);

  ///Build Override
  @override
  Widget buildPage(BuildContext context) {
    return ScreenTypeLayout.builder(
        mobile: (BuildContext context) {
          return const HomeMobile();
        },
        desktop: (BuildContext context) {
          return const HomeMobile();
        }
    );
  }
}