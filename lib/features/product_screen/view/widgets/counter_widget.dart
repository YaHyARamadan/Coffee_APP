import 'package:coffee_app/core/core_widgets/custom_text.dart';
import 'package:coffee_app/core/theme/color_theme.dart';
import 'package:coffee_app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../view_model/counter_provider.dart';

class CounterWidget extends StatelessWidget {
  const CounterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProviderCounter>(context);
    return Padding(
      padding: const EdgeInsets.only(top: 8,left: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          InkWell(
            onTap: provider.incrementCounter,
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.brown,
                borderRadius: BorderRadius.circular(25)
              ),
              child: CustomText(text: "+", style: TextThemes.sFProSize20Weight600.copyWith(color: ColorTheme.whiteColor)),
            ),
          ),
          const SizedBox(width: 10,),
          CustomText(text: "${provider.counter}", style: TextThemes.sFProSize20Weight600),
          const SizedBox(width: 10,),
          InkWell(
            onTap: provider.decrementCounter,
            child: Container(
              alignment: Alignment.center,
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  color: Colors.brown,
                  borderRadius: BorderRadius.circular(25)
              ),
              child: CustomText(text: "-", style: TextThemes.sFProSize20Weight600.copyWith(color: ColorTheme.whiteColor)),
            ),
          ),
        ],
      ),
    );
  }
}
