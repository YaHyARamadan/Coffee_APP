import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../../core/theme/color_theme.dart';
import '../../view_model/bottom_navigat_provider.dart';
import '../pages_structure.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigatProvider>(context);

    return SizedBox(
        height: 80,
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(20), topLeft: Radius.circular(20)),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: ColorTheme.whiteColor,
            currentIndex: provider.currentIndex,
            onTap: provider.currentIndexFun,
            items: [
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/img/Home.png",
                  scale: provider.currentIndex == 0 ? 1 : 1.5,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/img/Heart.png",
                  scale: provider.currentIndex == 1 ? 1 : 1.5,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/img/Bag.png",
                  scale: provider.currentIndex == 2 ? 1 : 1.5,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/img/Notification.png",
                  scale: provider.currentIndex == 3 ? 1 : 1.5,
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Image.asset(
                  "assets/img/Profile.png",
                  scale: provider.currentIndex == 4 ? 1 : 1.5,
                ),
                label: '',
              ),
            ],
          ),
        ));
  }
}
