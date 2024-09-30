import 'package:flutter/material.dart';
import '../../../../core/core_widgets/custom_text.dart';
import '../../../../core/theme/color_theme.dart';
import '../../../../core/theme/text_theme.dart';

class TabBarCategories extends StatelessWidget {
  final TabController controller;

  const TabBarCategories({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: controller,
      dividerColor: Colors.white,
      isScrollable: true,
      labelColor: ColorTheme.coffeeColor,
      labelStyle: TextThemes.sFProSize14Weight600,
      unselectedLabelColor: ColorTheme.greyColor,
      unselectedLabelStyle: TextThemes.sFProSize14Weight500,
      indicatorColor: Colors.black,
      tabAlignment: TabAlignment.center,
      tabs: [
        Tab(
            child: CustomText(
                text: "Espresso", style: TextThemes.sFProSize14Weight600)),
        Tab(
            child: CustomText(
                text: "Latte", style: TextThemes.sFProSize14Weight600)),
        Tab(
            child: CustomText(
                text: "Cappuccino", style: TextThemes.sFProSize14Weight600)),
        Tab(
            child: CustomText(
                text: "Cafetière", style: TextThemes.sFProSize14Weight600)),
      ],
    );
  }
}
