import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/choices_products_provider.dart';

class ProductChoices extends StatelessWidget {
  const ProductChoices({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ChoiceProductProvider>(context);
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          children: provider.productType.map((choice) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ActionChip(
                  label: Text(choice),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  backgroundColor: provider.selectedProductType == choice
                      ? Colors.brown
                      : Colors.grey.shade200,
                  labelStyle: TextStyle(
                    color: provider.selectedProductType == choice
                        ? Colors.white
                        : Colors.brown,
                  ),
                  onPressed: () {
                    provider.selectedProductTypeFun(choice);
                  }),
            );
          }).toList(),
        ));
  }
}
