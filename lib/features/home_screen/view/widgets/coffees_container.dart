import 'package:flutter/material.dart';

import '../../../../core/core_widgets/custom_text.dart';
import '../../../../core/theme/color_theme.dart';
import '../../../../core/theme/text_theme.dart';
import '../../../product_screen/view/product_screen.dart';

class CoffeeContainer extends StatelessWidget {
  final double price;
  final String product;
  final String subTitle;
  final String imgPath;

  const CoffeeContainer({
    super.key,
    required this.price,
    required this.product,
    required this.subTitle,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductScreen(
                  price: price,
                )));
      },
      child: Container(
        width: 170,
        height: 209,
        decoration: BoxDecoration(
            color: ColorTheme.whiteColor,
            borderRadius: BorderRadius.circular(25)),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              right: 15,
              child: Image.asset(imgPath),
            ),
            Positioned(
                right: 15,
                top: 10,
                child: Container(
                  width: 73,
                  height: 26,
                  decoration: const BoxDecoration(
                      color: ColorTheme.brownColor,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(25))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/img/Star 1.png"),
                      const SizedBox(
                        width: 10,
                      ),
                      CustomText(
                          text: "4.5",
                          style: TextThemes.sFProSize12Weight600
                              .copyWith(color: ColorTheme.whiteColor))
                    ],
                  ),
                )),
            Positioned(
              bottom: 12,
              right: 10,
              left: 10,
              child: ListTile(
                title: CustomText(
                  text: product,
                  style: TextThemes.sFProSize16Weight500
                      .copyWith(color: ColorTheme.greyColor),
                ),
                subtitle: CustomText(
                  text: subTitle,
                  style: TextThemes.sFProSize10Weight400
                      .copyWith(color: ColorTheme.greyColor),
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              right: 10,
              left: 10,
              child: Align(
                alignment: Alignment.bottomLeft,
                child: RichText(
                    text: TextSpan(
                        style: TextThemes.sFProSize14Weight600,
                        children: [
                      TextSpan(
                        text: r"$",
                        style: TextThemes.sFProSize14Weight600
                            .copyWith(color: ColorTheme.coffeeColor),
                      ),
                      TextSpan(
                        text: "$price",
                        style: TextThemes.sFProSize14Weight600
                            .copyWith(color: ColorTheme.greyColor),
                      )
                    ])),
              ),
            ),
            Positioned(
                right: 0,
                bottom: 0,
                child: InkWell(
                  child: Container(
                    width: 52,
                    height: 53,
                    decoration: const BoxDecoration(
                        color: ColorTheme.brownColor,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomRight: Radius.circular(25))),
                    child: Image.asset("assets/img/Vector.png"),
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
