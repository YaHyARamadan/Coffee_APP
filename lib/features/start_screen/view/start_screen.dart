import 'package:flutter/material.dart';

import '../../../core/core_widgets/custom_text.dart';
import '../../../core/routes/routes.dart';
import '../../../core/theme/color_theme.dart';
import '../../../core/theme/text_theme.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorTheme.lightCoffeeColor,
      body: SafeArea(
          child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height * 0.55,
              child: Image.asset("assets/img/Rectangle 4.png"),
            ),
            CustomText(
                text: "Stay Focused",
                style: TextThemes.sFProSize24Weight600
                    .copyWith(color: ColorTheme.brownColor)),
            const SizedBox(height: 10),
            CustomText(
                text:
                    "   Get the cup filled of your choice to stay\nfocused and awake. Different type of coffee\n             menu, hot lottee cappucino",
                style: TextThemes.sFProSize14Weight400
                    .copyWith(color: ColorTheme.greyColor)),
            const SizedBox(height: 70),
            ElevatedButton(
              onPressed: () =>
                  Navigator.of(context).pushNamed(AppRoutes.mainScreen),
              style: const ButtonStyle(
                  backgroundColor:
                      WidgetStatePropertyAll(ColorTheme.coffeeColor),
                  foregroundColor:
                      WidgetStatePropertyAll(ColorTheme.whiteColor),
                  padding: WidgetStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 60, vertical: 20))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomText(
                      text: "Dive In",
                      style: TextThemes.sFProSize16Weight400
                          .copyWith(fontFamily: "Mirandah")),
                  const SizedBox(
                    width: 10,
                  ),
                  const Icon(
                    Icons.arrow_forward_sharp,
                    size: 16,
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
