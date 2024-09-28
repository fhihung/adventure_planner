import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_state.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class CompletePage extends StatelessWidget {
  const CompletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanGenerationBloc, PlanGenerationState>(
      builder: (context, state) {
        final activities = state.responseContent?['activities'];
        return SheetContentScaffold(
          appBar: SharedAppBarHero(appbar: AppBar()),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Text(
                              '${state.responseContent?['location']}',
                              style: AppTextStyle.headline4,
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Assets.icons.linear.svg.calendar.svg(),
                          const SizedBox(width: 8),
                          Text(
                            '${state.responseContent?['days']} days',
                            style: AppTextStyle.body2,
                          ),
                          const SizedBox(width: 8),
                          Container(
                            height: 16,
                            width: 1,
                            color: Colors.grey,
                          ),
                          const SizedBox(width: 8),
                          Assets.icons.linear.svg.dollarSquare.svg(),
                          const SizedBox(width: 6),
                          Text(
                            '${state.responseContent?['costEstimate']}',
                            style: AppTextStyle.body2,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      // CommonListTile(title: 'Location', subtitle: '${state.responseContent?['location']}'),
                      // const SizedBox(height: 16),
                      // CommonListTile(title: 'Duration', subtitle: '${state.responseContent?['days']} '),
                      // const SizedBox(height: 16),
                      // CommonListTile(title: 'Budget', subtitle: '${state.responseContent?['costEstimate']} '),
                      // const SizedBox(height: 24),
                      ListView.separated(
                        separatorBuilder: (context, index) => const SizedBox(height: 8),
                        itemCount: activities.length as int,
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          final activity = activities[index];
                          final schedule = activity['schedule'];
                          return Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 16.0),
                                child: Text(
                                  'Day ${activity['day']}',
                                  style: AppTextStyle.hairline1,
                                ),
                              ),
                              const SizedBox(height: 8),
                              ListView.separated(
                                separatorBuilder: (context, index) => const SizedBox(height: 16),
                                itemCount: schedule.length as int,
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                // Prevent scrolling in nested ListView
                                itemBuilder: (context, scheduleIndex) {
                                  final scheduledItem = schedule[scheduleIndex];
                                  return CommonActivity(
                                    time: '${scheduledItem['time']}',
                                    activity: '${scheduledItem['activity']}',
                                  );
                                },
                              ),
                            ],
                          );
                        },
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CommonActivity extends StatelessWidget {
  const CommonActivity({
    // required this.day,
    required this.time,
    required this.activity,
    super.key,
  });

  // final String day;
  final String time;
  final String activity;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('Day $day', style: AppTextStyle.hairline1),
        // Text('Day ${state.responseContent?['activities'][0]['day']}', style: AppTextStyle.hairline1),
        // const SizedBox(height: 16),
        Card(
          child: Container(
            padding: const EdgeInsets.all(16),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Assets.icons.linear.svg.clock.svg(),
                    const SizedBox(width: 8),
                    Text(
                      time,
                      // '${state.responseContent?['activities'][0]['schedule'][0]['time']}',
                      style: AppTextStyle.hairline1,
                    ),
                  ],
                ),
                const SizedBox(height: 8),
                Text(activity),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class CommonListTile extends StatelessWidget {
  const CommonListTile({
    required this.title,
    required this.subtitle,
    super.key,
  });

  final String title;
  final String subtitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 80,
          child: Text(
            title,
            style: AppTextStyle.body2,
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(width: 16),
        Expanded(
          child: Text(
            subtitle,
            style: AppTextStyle.hairline1,
            overflow: TextOverflow.clip,
            textAlign: TextAlign.end,
          ),
        ),
      ],
    );
  }
}
