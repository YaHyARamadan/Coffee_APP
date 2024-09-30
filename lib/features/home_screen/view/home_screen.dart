import 'package:coffee_app/features/home_screen/view/widgets/products_container.dart';
import 'package:coffee_app/features/home_screen/view/widgets/tab_bar_catogries.dart';
import 'package:flutter/material.dart';
import '../../../core/core_widgets/custom_text.dart';
import '../../../core/theme/color_theme.dart';
import '../../../core/theme/text_theme.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? tabController;

  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Image.asset("assets/img/Category.png"),
                      )),
                  Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Image.asset("assets/img/Ellipse 2.png")),
                ],
              ),
              CustomText(
                  text: "Find the best\nCoffee to your taste",
                  style: TextThemes.sFProSize22Weight600
                      .copyWith(color: ColorTheme.greyColor)),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 275,
                    height: 50,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Image.asset("assets/img/Search.png"),
                        fillColor: Colors.white,
                        hintText: "Find your coffee...",
                        hintStyle: TextThemes.sFProSize10Weight400.copyWith(
                            fontSize: 12, color: const Color(0xff444444)),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(
                                color: ColorTheme.coffeeColor)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(15),
                            borderSide: const BorderSide(color: Colors.grey)),
                        contentPadding:
                            const EdgeInsets.symmetric(vertical: 20),
                      ),
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: const BoxDecoration(
                        color: ColorTheme.coffeeColor,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                          bottomRight: Radius.circular(30),
                          bottomLeft: Radius.circular(15),
                        )),
                    child: Image.asset("assets/img/Filter.png"),
                  )
                ],
              ),
              const SizedBox(height: 10),
              TabBarCategories(
                controller: tabController!,
              ),
              SizedBox(
                  height: 220,
                  child: TabBarView(controller: tabController, children: const [
                    ProductsContainer(
                        price: 4.20,
                        product: "Espresso",
                        subTitle: "with Oa t Milk",
                        imgPath: "assets/img/Rectangle 16.png",
                        productPrice2: 4.50,
                        productSubTitle2: "with Milk",
                        productImgPath2: "assets/img/Rectangle 16(1).png"),
                    ProductsContainer(
                        price: 4.99,
                        product: "Latte",
                        subTitle: "Caramel latte",
                        imgPath: "assets/img/Rectangle 16.png",
                        productPrice2: 4.50,
                        productSubTitle2: "Vanilla latte",
                        productImgPath2: "assets/img/Rectangle 16(1).png"),
                    ProductsContainer(
                        price: 4.20,
                        product: "Cappuccino",
                        subTitle: "Light Cappuccino",
                        imgPath: "assets/img/Rectangle 16.png",
                        productPrice2: 4.50,
                        productSubTitle2: "Dark Cappuccino",
                        productImgPath2: "assets/img/Rectangle 16(1).png"),
                    ProductsContainer(
                        price: 4.20,
                        product: "Cafetiere",
                        subTitle: "Normal",
                        imgPath: "assets/img/Rectangle 16.png",
                        productPrice2: 4.50,
                        productSubTitle2: "with Milk",
                        productImgPath2: "assets/img/Rectangle 16(1).png"),
                  ])),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 170,
                decoration: BoxDecoration(
                    color: ColorTheme.coffeeColor,
                    borderRadius: BorderRadius.circular(25)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset("assets/img/Rectangle 20.png"),
                    const SizedBox(
                      width: 30,
                    ),
                    CustomText(
                        text:
                            "Specially mixed and\nbrewed which you\nmust try!",
                        style: TextThemes.interSize14Weight600
                            .copyWith(color: Colors.white)),
                  ],
                ),
              ),
            ]),
      ),
    );
  }
}
