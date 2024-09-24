import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/utils/constants/app_spaces.dart';
import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SheetContentScaffold(
      bottomBar: BottomActionBar(
        label: 'Get started',
        onPressed: () {
          context.go('/intro/location');
        },
      ),
      appBar: SharedAppBarHero(
        appbar: AppBar(
          leading: IconButton(
            onPressed: () => context.go('/'),
            icon: const Icon(Icons.close),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Hello there!\n'
              "I'm your AI travel assistant. "
              'Ready to create your perfect travel plan.',
              textAlign: TextAlign.center,
              style: AppTextStyle.headline4.copyWith(),
            ),
            const SizedBox(height: AppSpaces.space10),
          ],
        ),
      ),
    );
  }
}
