import 'package:adventure_planner/utils/constants/app_spaces.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import '../../plan_generation/widget/bottom_action_bar.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SheetContentScaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: AppSpaces.space7,
        ),
        width: double.infinity,
        color: CommonColors.neutrals8,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Sign up',
              style: AppTextStyle.headline4.copyWith(
                color: CommonColors.neutrals1,
              ),
            ),
            const SizedBox(height: AppSpaces.space8),
            Column(
              children: [
                Container(
                  height: AppSpaces.space10,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CommonColors.neutrals4,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: CommonColors.neutrals2,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      isCollapsed: true,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpaces.space5,
                        vertical: AppSpaces.space5,
                      ),
                      hintText: 'Full Name',
                      hintStyle: AppTextStyle.caption,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space6,
                ),
                Container(
                  height: AppSpaces.space10,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CommonColors.neutrals4,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: CommonColors.neutrals2,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      isCollapsed: true,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpaces.space5,
                        vertical: AppSpaces.space5,
                      ),
                      hintText: 'Email',
                      hintStyle: AppTextStyle.caption,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space6,
                ),
                Container(
                  height: AppSpaces.space10,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CommonColors.neutrals4,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    obscureText: true,
                    cursorColor: CommonColors.neutrals2,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      isCollapsed: true,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpaces.space5,
                        vertical: AppSpaces.space5,
                      ),
                      alignLabelWithHint: true,
                      hintText: 'Password',
                      hintStyle: AppTextStyle.caption,
                    ),
                  ),
                ),
                const SizedBox(
                  height: AppSpaces.space6,
                ),
                Container(
                  height: AppSpaces.space10,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: CommonColors.neutrals4,
                    ),
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(90),
                  ),
                  alignment: Alignment.center,
                  child: TextFormField(
                    textAlignVertical: TextAlignVertical.center,
                    cursorColor: CommonColors.neutrals2,
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
                      isCollapsed: true,
                      isDense: true,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: AppSpaces.space5,
                        vertical: AppSpaces.space5,
                      ),
                      hintText: 'Email',
                      hintStyle: AppTextStyle.caption,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomBar: BottomActionBar(
        label: 'Sign up',
        onPressed: () {},
        secondLabel: 'Already have an account? Log in',
        secondOnPressed: () {},
      ),
    );
  }
}
