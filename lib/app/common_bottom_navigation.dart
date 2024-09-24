import 'package:adventure_planner/home/screens/home_screen.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class CommonBottomNavigation extends StatefulWidget {
  CommonBottomNavigation({
    super.key,
    this.selectedIndex = 0,
  });

  @override
  State<CommonBottomNavigation> createState() => _CommonBottomNavigationState();
  int selectedIndex;
}

class _CommonBottomNavigationState extends State<CommonBottomNavigation> {
  final List<Widget> _screens = [
    const HomeScreen(),
    const HomeScreen(),
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
      widget.selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoStackedTransition(
      cornerRadius: Tween(begin: 0.0, end: 16.0),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: CommonColors.primary1,
          onPressed: () {
            // Hành động khi nhấn nút add
            context.go('/intro');
          },
          child: const Icon(Icons.add),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: widget.selectedIndex,
          onTap: _onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                widget.selectedIndex == 0 ? _boldIconPaths[0] : _iconPaths[0],
                colorFilter: ColorFilter.mode(
                  widget.selectedIndex == 0 ? CommonColors.primary1 : CommonColors.neutrals5,
                  BlendMode.srcIn,
                ),
              ),
              label: _labelList[0],
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                widget.selectedIndex == 1 ? _boldIconPaths[1] : _iconPaths[1],
                colorFilter: ColorFilter.mode(
                  widget.selectedIndex == 0 ? CommonColors.neutrals5 : CommonColors.primary1,
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
        body: _screens[widget.selectedIndex],
      ),
    );
  }
}

// class IntroGeneratePage extends StatelessWidget {
//   const IntroGeneratePage({
//     super.key,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(
//         vertical: AppSpaces.space6,
//         horizontal: AppSpaces.space5,
//       ),
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Row(
//             children: [
//               GestureDetector(
//                 onTap: () {
//                   Navigator.pop(context);
//                 },
//                 child: const Icon(Icons.close),
//               ),
//             ],
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 32,
//               vertical: 20,
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Text(
//                   'Hello there!\n'
//                   "I'm your AI Travel assistant. "
//                   'Ready to create the perfect travel plan for you.',
//                   textAlign: TextAlign.center,
//                   style: AppTextStyle.headline4,
//                 ),
//                 const SizedBox(height: AppSpaces.space8),
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       CommonModalSheet.showModalSheet(
//                         context,
//                         isFullScreen: false,
//                         child: SizedBox(
//                           width: double.infinity,
//                           child: Padding(
//                             padding: const EdgeInsets.symmetric(
//                               vertical: AppSpaces.space6,
//                               horizontal: AppSpaces.space5,
//                             ),
//                             child: Column(
//                               mainAxisSize: MainAxisSize.min,
//                               children: [
//                                 Row(
//                                   children: [
//                                     GestureDetector(
//                                       onTap: () {
//                                         Navigator.pop(context);
//                                       },
//                                       child: const Icon(
//                                         Icons.arrow_back_ios,
//                                         color: CommonColors.neutrals1,
//                                       ),
//                                     ),
//                                   ],
//                                 ),
//                                 const SizedBox(height: AppSpaces.space6),
//                                 const Text(
//                                   'Great! Where will you want to travel?',
//                                   textAlign: TextAlign.center,
//                                   style: AppTextStyle.headline4,
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     },
//                     child: const Text('Continue'),
//                   ),
//                 ),
//                 TextButton(
//                   onPressed: () {
//                     Navigator.pop(context);
//                   },
//                   child: const Text('No, thanks'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
