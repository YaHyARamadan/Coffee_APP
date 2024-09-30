import 'package:coffee_app/core/routes/router.dart';
import 'package:coffee_app/core/routes/routes.dart';
import 'package:coffee_app/core/theme/color_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'features/pages_structure/view_model/bottom_navigat_provider.dart';
import 'features/product_screen/view/product_screen.dart';
import 'features/product_screen/view_model/choices_products_provider.dart';
import 'features/product_screen/view_model/counter_provider.dart';
import 'features/product_screen/view_model/product_size_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => BottomNavigatProvider()),
        ChangeNotifierProvider(create: (_) => ChoiceProductProvider()),
        ChangeNotifierProvider(create: (_) => ProductSizeProvider()),
        ChangeNotifierProvider(create: (_) => ProviderCounter()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(scaffoldBackgroundColor: ColorTheme.whiteColor),
        debugShowCheckedModeBanner: false,
        initialRoute: AppRoutes.startScreen,
        onGenerateRoute: onGenerate,
      ),
    );
  }
}
