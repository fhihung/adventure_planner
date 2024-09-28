import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_event.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_state.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class ConfirmPage extends StatefulWidget {
  const ConfirmPage({super.key});

  @override
  State<ConfirmPage> createState() => _ConfirmPageState();
}

class _ConfirmPageState extends State<ConfirmPage> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanGenerationBloc, PlanGenerationState>(
      builder: (context, state) {
        return SheetContentScaffold(
          appBar: SharedAppBarHero(appbar: AppBar()),
          body: Padding(
            padding: const EdgeInsets.only(left: 32, right: 16),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                          'Your Trip',
                          style: AppTextStyle.hairline1,
                        ),
                        trailing: IconButton(
                          onPressed: () => context.go('/intro/current_location'),
                          icon: Assets.icons.linear.svg.edit.svg(),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.linear.svg.location.svg(
                            height: 24,
                          ),
                          const SizedBox(width: 8),
                          Text(
                            state.currentLocation,
                            style: AppTextStyle.body2,
                          ),
                          const SizedBox(width: 8),
                          Assets.icons.linear.svg.arrowRight.svg(),
                          const SizedBox(width: 8),
                          Expanded(
                            child: Text(
                              state.selectedLocations.join(', '),
                              style: AppTextStyle.body2,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      ListTile(
                        title: const Text(
                          'Budget',
                          style: AppTextStyle.hairline1,
                        ),
                        trailing: IconButton(
                          onPressed: () => context.go('/intro/current_location'),
                          icon: Assets.icons.linear.svg.edit.svg(),
                        ),
                      ),
                      Row(
                        children: [
                          Assets.icons.linear.svg.coins.svg(),
                          const SizedBox(width: 8),
                          Text(
                            '${state.budget}/${state.numPeople} people',
                            style: AppTextStyle.body2,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // ListTile(
                      //   title: const Text(
                      //     'Locations',
                      //     style: AppTextStyle.hairline1,
                      //   ),
                      //   trailing: IconButton(
                      //     onPressed: () => context.go('/intro/location'),
                      //     icon: Assets.icons.linear.svg.edit.svg(),
                      //   ),
                      // ),
                      // Padding(
                      //   padding: const EdgeInsets.only(right: 32),
                      //   child: Wrap(
                      //     spacing: 10,
                      //     children: [
                      //       for (final genre in state.selectedLocations)
                      //         FilterChip(
                      //           checkmarkColor: Colors.white,
                      //           selectedColor: PrimaryColors.baseDarkMode,
                      //           backgroundColor: CommonColors.neutrals7,
                      //           label: DefaultTextStyle(
                      //             style: const TextStyle(color: Colors.white),
                      //             child: Text(genre),
                      //           ),
                      //           selected: true,
                      //           onSelected: (_) {}, // No action on selection
                      //         ),
                      //     ],
                      //   ),
                      // ),
                      const Divider(
                        height: 32,
                        thickness: 1,
                        endIndent: 16,
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
                        endIndent: 16,
                      ),
                      ListTile(
                        title: const Text(
                          'Type of travel',
                          style: AppTextStyle.hairline1,
                        ),
                        trailing: IconButton(
                          onPressed: () => context.go('/intro/location/duration/trip_type'),
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
              context.read<PlanGenerationBloc>().add(
                    PlanGeneratePressed(
                      context: context,
                    ),
                  );
              if (state.isGenerating == true) {
                context.go('/intro/location/duration/trip_type/confirm/generate');
              }
              if (state.response?.statusCode == 200) {
                context.go('/intro/location/duration/trip_type/confirm/complete');
              }
            },
          ),
        );
      },
    );
  }
}
