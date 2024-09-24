import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            color: CommonColors.neutrals7,
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage(Assets.images.googleIcon.path),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(width: AppSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            color: CommonColors.neutrals7,
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage(
                Assets.images.appleLogo.path,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
