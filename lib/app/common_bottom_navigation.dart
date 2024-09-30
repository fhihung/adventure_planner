import 'package:adventure_planner/home/screens/home_screen.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/setting/page/setting_page.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class CommonBottomNavigation extends StatefulWidget {
  const CommonBottomNavigation({super.key});

  @override
  State<CommonBottomNavigation> createState() => _CommonBottomNavigationState();
}

class _CommonBottomNavigationState extends State<CommonBottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const SettingPage(),
    // const SettingScreen(),
  ];

  final List<String> _iconPaths = [
    Assets.icons.linear.svg.home.path,
    Assets.icons.linear.svg.setting.path,
  ];

  final List<String> _boldIconPaths = [
    Assets.icons.bold.svg.home.path,
    Assets.icons.bold.svg.setting.path,
  ];

  final List<String> _labelList = [
    'Home',
    'Settings',
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoStackedTransition(
      cornerRadius: Tween(begin: 0, end: 16),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: CommonColors.primary,
          onPressed: () {
            context.go('/intro');
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 0 ? _boldIconPaths[0] : _iconPaths[0],
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? CommonColors.primary : CommonColors.neutrals5,
                  BlendMode.srcIn,
                ),
              ),
              label: _labelList[0],
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _selectedIndex == 1 ? _boldIconPaths[1] : _iconPaths[1],
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0 ? CommonColors.neutrals5 : CommonColors.primary1,
                  BlendMode.srcIn,
                ),
              ),
              label: _labelList[1],
            ),
          ],
          selectedItemColor: CommonColors.primary1,
          unselectedItemColor: Colors.grey,
          type: BottomNavigationBarType.fixed,
        ),
        body: _screens[_selectedIndex],
      ),
    );
  }
}
