import 'package:coffee_app/features/pages_structure/view/widgets/bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../view_model/bottom_navigat_provider.dart';

class PagesStructure extends StatelessWidget {
  const PagesStructure({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigatProvider>(context);

    return Scaffold(
      drawer: const Drawer(),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SafeArea(
          child: provider.selectedPage[provider.currentIndex]),
    );
  }
}
