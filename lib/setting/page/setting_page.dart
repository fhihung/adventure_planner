import 'package:adventure_planner/login/screens/login_screen.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/setting/bloc/setting_bloc.dart';
import 'package:adventure_planner/setting/bloc/setting_event.dart';
import 'package:adventure_planner/setting/bloc/setting_state.dart';
import 'package:adventure_planner/utils/constants/app_spaces.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({super.key});

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  @override
  void initState() {
    super.initState();
    context.read<SettingBloc>().add(
          const SettingInitiated(),
        );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SettingBloc, SettingState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: const Text(
              'Setting',
              style: AppTextStyle.body2Bold,
            ),
          ),
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppSpaces.space6,
              ),
              child: Column(
                children: [
                  Text(
                    state.user?.name ?? '',
                    style: AppTextStyle.body2Bold,
                  ),
                  const SizedBox(
                    height: AppSpaces.space7,
                  ),
                  OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(
                        color: CommonColors.errorColor,
                      ),
                    ),
                    onPressed: () {
                      context.read<SettingBloc>().add(
                            LogoutPressed(
                              onLogoutSuccess: () {
                                // Fluttertoast.showToast(
                                //   msg: 'See you again!',
                                //   toastLength: Toast.LENGTH_SHORT,
                                //   gravity: ToastGravity.BOTTOM,
                                //   backgroundColor: Colors.green,
                                //   textColor: Colors.white,
                                //   fontSize: 16,
                                // );
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              onLogoutFailed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute<void>(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                                // Fluttertoast.showToast(
                                //   msg: 'Logout failed',
                                //   toastLength: Toast.LENGTH_SHORT,
                                //   gravity: ToastGravity.BOTTOM,
                                //   backgroundColor: Colors.red,
                                //   textColor: Colors.white,
                                //   fontSize: 16,
                                // );
                              },
                            ),
                          );
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: AppSpaces.space5,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Log out',
                            style: AppTextStyle.button1.copyWith(
                              color: CommonColors.errorColor,
                            ),
                          ),
                          const SizedBox(width: AppSpaces.space3),
                          // Assets.icons.linear.svg.logout.svg(
                          //   colorFilter: ColorFilter.mode(
                          //     appColors.textRed,
                          //     BlendMode.srcIn,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class SettingItem extends StatelessWidget {
  const SettingItem({
    required this.icon,
    required this.title,
    super.key,
    this.onTap,
  });

  final Widget icon;
  final Widget title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: AppSpaces.space6,
        ),
        decoration: BoxDecoration(
          color: Colors.transparent,
          // Optional: Add a background color to the tap area if desired
          borderRadius: BorderRadius.circular(12), // Optional: Add rounded corners
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                DefaultSvgTheme(
                  theme: const SvgTheme(),
                  child: icon,
                ),
                const SizedBox(
                  width: AppSpaces.space4,
                ),
                DefaultTextStyle(
                  style: AppTextStyle.body2,
                  child: title,
                ),
              ],
            ),
            Assets.icons.linear.svg.arrowRight.svg(
              width: 16,
              height: 16,
              // colorFilter: ColorFilter.mode(
              //   appColors.backgroundGray,
              //   BlendMode.srcIn,
              // ),
            ),
          ],
        ),
      ),
    );
  }
}
