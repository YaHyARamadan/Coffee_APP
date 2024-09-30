import 'package:coffee_app/core/core_widgets/custom_text.dart';
import 'package:coffee_app/core/theme/color_theme.dart';
import 'package:coffee_app/core/theme/text_theme.dart';
import 'package:coffee_app/features/product_screen/view/widgets/counter_widget.dart';
import 'package:coffee_app/features/product_screen/view/widgets/product_choice.dart';
import 'package:coffee_app/features/product_screen/view/widgets/product_size_choice.dart';
import 'package:coffee_app/features/product_screen/view_model/counter_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../view_model/choices_products_provider.dart';

class ProductScreen extends StatelessWidget {
  final double price;

  const ProductScreen({super.key, required this.price});

  @override
  Widget build(BuildContext context) {
    var productProvider = Provider.of<ChoiceProductProvider>(context);
    var counterProvider = Provider.of<ProviderCounter>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: Column(
              children: [
                Image.asset("assets/img/Rectangle 24.png"),
                const SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                        text: "Description",
                        style: TextThemes.interSize15Weight700
                            .copyWith(color: ColorTheme.greyColor))),
                const SizedBox(
                  height: 5,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                        text:
                            "Espresso is a delicious concentrated form of coffee, served in shots.\nIt's often the coffee base of many other beverages",
                        style: TextThemes.interSize15Weight700.copyWith(
                            color: ColorTheme.greyColor, fontSize: 12))),
                const SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: CustomText(
                        text: "Choice of Chocolate",
                        style: TextThemes.interSize15Weight700
                            .copyWith(color: ColorTheme.greyColor))),
                const ProductChoices(),
                const SizedBox(
                  height: 10,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: "   Size",
                                style: TextThemes.interSize15Weight700
                                    .copyWith(color: ColorTheme.greyColor)),
                            const ProductSizeChoice(),
                          ],
                        ),
                        Column(
                          children: [
                            CustomText(
                                text: "Quantity",
                                style: TextThemes.interSize15Weight700
                                    .copyWith(color: ColorTheme.greyColor)),
                            const CounterWidget()
                          ],
                        ),
                      ],
                    )),
                const SizedBox(
                  height: 40,
                ),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: "  Price",
                                style: TextThemes.interSize15Weight700
                                    .copyWith(color: ColorTheme.greyColor)),
                            CustomText(
                                text: "\$ ${price * counterProvider.counter}",
                                style: TextThemes.interSize15Weight700
                                    .copyWith(color: ColorTheme.greyColor)),
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {},
                            style: const ButtonStyle(
                                backgroundColor:
                                    WidgetStatePropertyAll(Colors.brown),
                                padding: WidgetStatePropertyAll(
                                    EdgeInsets.symmetric(
                                        horizontal: 65, vertical: 15))),
                            child: CustomText(
                                text: "Buy Now",
                                style: TextThemes.interSize15Weight700
                                    .copyWith(color: ColorTheme.whiteColor)))
                      ],
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
