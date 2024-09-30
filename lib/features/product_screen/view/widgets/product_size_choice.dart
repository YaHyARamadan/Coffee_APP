import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/product_size_provider.dart';

class ProductSizeChoice extends StatelessWidget {
  const ProductSizeChoice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ProductSizeProvider>(context);
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          children: provider.productSize.map((choice) {
            return Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: ActionChip(
                  label: Text(choice),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25)),
                  backgroundColor: provider.selectedProductSize == choice
                      ? Colors.brown
                      : Colors.grey.shade200,
                  labelStyle: TextStyle(
                    color: provider.selectedProductSize == choice
                        ? Colors.white
                        : Colors.brown,
                  ),
                  onPressed: () {
                    provider.selectedProductSizeFun(choice);
                  }),
            );
          }).toList(),
        ));
  }
}
