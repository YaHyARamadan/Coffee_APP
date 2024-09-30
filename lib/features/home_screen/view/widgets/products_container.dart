import 'package:coffee_app/features/product_screen/view/product_screen.dart';
import 'package:flutter/material.dart';

import 'coffees_container.dart';

class ProductsContainer extends StatelessWidget {
  final double price;
  final String product;
  final String subTitle;
  final String imgPath;
  final double productPrice2;

  final String productSubTitle2;
  final String productImgPath2;

  const ProductsContainer(
      {super.key,
      required this.price,
      required this.product,
      required this.subTitle,
      required this.imgPath,
      required this.productPrice2,
      required this.productSubTitle2,
      required this.productImgPath2});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductScreen(price: price)));
      },
      child: Container(
        width: 329,
        height: 220,
        decoration: BoxDecoration(
            color: Colors.grey[50], borderRadius: BorderRadius.circular(10)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CoffeeContainer(
                price: price,
                product: product,
                subTitle: subTitle,
                imgPath: imgPath),
            CoffeeContainer(
                price: productPrice2,
                product: product,
                subTitle: productSubTitle2,
                imgPath: productImgPath2),
          ],
        ),
      ),
    );
  }
}
