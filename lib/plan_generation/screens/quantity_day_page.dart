import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/selectable_quantity_day.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import '../bloc/plan_generation_event.dart';

class SelectQuantityDayPage extends StatefulWidget {
  const SelectQuantityDayPage({super.key});

  @override
  _SelectQuantityDayPageState createState() => _SelectQuantityDayPageState();
}

class _SelectQuantityDayPageState extends State<SelectQuantityDayPage> {
  int? _selectedDays;

  void _onQuantitySelected(int? days) {
    setState(() {
      _selectedDays = days;
    });
  }

  void _onNextPressed() {
    context.read<PlanGenerationBloc>().add(
          QuantityDaysPicked(_selectedDays ?? 3),
        );
    // Print the selected days
    print('Selected quantity of days: $_selectedDays');
    context.go('/intro/location/quantity-day/trip-type');
  }

  @override
  Widget build(BuildContext context) {
    return SheetContentScaffold(
      appBar: SharedAppBarHero(appbar: AppBar()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 24),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'How many days to travel? (2/3)',
                  style: AppTextStyle.headline4,
                ),
              ),
              const SizedBox(height: 24),
              Padding(
                padding: const EdgeInsets.only(left: 16),
                child: SelectableQuantityDayList(
                  onQuantitySelected: _onQuantitySelected, // Pass the callback
                ),
              ),
            ],
          ),
        ),
      ),
      bottomBar: BottomActionBar(
        label: 'Next',
        onPressed: _onNextPressed, // Call the method to print and navigate
      ),
    );
  }
}
