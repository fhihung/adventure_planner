import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_state.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/colors.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class ConfirmPage extends StatelessWidget {
  const ConfirmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanGenerationBloc, PlanGenerationState>(
      builder: (context, state) {
        return SheetContentScaffold(
          appBar: SharedAppBarHero(appbar: AppBar()),
          body: Padding(
            padding: const EdgeInsets.only(left: 32),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(right: 32),
                        child: Text(
                          'Confirm your plan',
                          style: AppTextStyle.headline4,
                        ),
                      ),
                      const SizedBox(height: 24),
                      ListTile(
                        title: const Text(
                          'Locations',
                          style: AppTextStyle.hairline1,
                        ),
                        trailing: IconButton(
                          onPressed: () => context.go('/intro/location'),
                          icon: Assets.icons.linear.svg.edit.svg(),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 32),
                        child: Wrap(
                          spacing: 10,
                          children: [
                            for (final genre in state.selectedLocations)
                              FilterChip(
                                checkmarkColor: Colors.white,
                                selectedColor: PrimaryColors.baseDarkMode,
                                backgroundColor: CommonColors.neutrals7,
                                label: DefaultTextStyle(
                                  style: const TextStyle(color: Colors.white),
                                  child: Text(genre),
                                ),
                                selected: true,
                                onSelected: (_) {}, // No action on selection
                              ),
                          ],
                        ),
                      ),
                      const Divider(
                        height: 32,
                        thickness: 1,
                        endIndent: 32,
                      ),
                      ListTile(
                        title: const Text(
                          'Days',
                          style: AppTextStyle.hairline1,
                        ),
                        trailing: IconButton(
                          onPressed: () => context.go('/intro/location/days'),
                          icon: Assets.icons.linear.svg.edit.svg(),
                        ),
                      ),
                      RadioListTile(
                        activeColor: CommonColors.primary,
                        title: Text('${state.days} Days'),
                        secondary: const Text(
                          '🎉',
                          style: TextStyle(fontSize: 24),
                        ),
                        controlAffinity: ListTileControlAffinity.trailing,
                        value: '',
                        groupValue: '',
                        onChanged: (_) {},
                      ),
                      const Divider(
                        height: 32,
                        thickness: 1,
                        endIndent: 32,
                      ),
                      ListTile(
                        title: const Text(
                          'Type of travel',
                          style: AppTextStyle.hairline1,
                        ),
                        trailing: IconButton(
                          onPressed: () => context.go('/intro/location//seed-track'),
                          icon: Assets.icons.linear.svg.edit.svg(),
                        ),
                      ),
                    ],
                  ),
                ),
                SliverList.builder(
                  itemCount: state.selectedTripTypes.length,
                  itemBuilder: (context, index) {
                    return CheckboxListTile(
                      checkColor: CommonColors.primary,
                      title: Text(state.selectedTripTypes[index]),
                      value: true,
                      onChanged: (_) {},
                    );
                  },
                ),
              ],
            ),
          ),
          bottomBar: BottomActionBar(
            label: "OK, let's go!",
            showDivider: true,
            onPressed: () async {
              context.go('/intro/location/duration/trip-type/confirm/generate');
              await Future<void>.delayed(const Duration(seconds: 2));
              if (context.mounted) {
                context.go('/');
              }
            },
          ),
        );
      },
    );
  }
}
