import 'package:adventure_planner/app/common_bottom_navigation.dart';
import 'package:adventure_planner/common/common_divider.dart';
import 'package:adventure_planner/login/widgets/social_buttons.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: AppSpaces.space7,
      ),
      width: double.infinity,
      color: CommonColors.neutrals8,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          children: [
            Text(
              'Sign in',
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
              ],
            ),
            const SizedBox(
              height: AppSpaces.space4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Forgot password?',
                  style: AppTextStyle.caption2Bold.copyWith(
                    color: CommonColors.neutrals3,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppSpaces.space10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    vertical: AppSpaces.space6,
                  ),
                  // backgroundColor: CommonColors.primary1Variant,
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute<void>(
                      builder: (context) => CommonBottomNavigation(),
                    ),
                  );
                },
                child: Text(
                  'Sign in',
                  style: AppTextStyle.body2.copyWith(
                    color: CommonColors.neutrals8,
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(S.dontHaveAnAccount, style: AppTextStyle.caption2),
                TextButton(
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppSizes.xs,
                    ),
                  ),
                  onPressed: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute<void>(
                    //     builder: (context) => const SignUpScreen(),
                    //   ),
                    // );
                  },
                  child: const Text(S.createAccount, style: AppTextStyle.caption2Bold),
                ),
              ],
            ),
            const SizedBox(
              height: AppSpaces.space7,
            ),

            /// Divider
            const CommonDivider(text: 'OR'),

            const SizedBox(
              height: AppSpaces.space7,
            ),

            /// Sign Up with Social Account
            const SocialButtons(),
          ],
        ),
      ),
    );
  }
}
