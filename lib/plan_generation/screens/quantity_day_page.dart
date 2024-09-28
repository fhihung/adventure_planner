import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_event.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/selectable_duration_list.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';
import 'package:toastification/toastification.dart';

class SelectQuantityDayPage extends StatefulWidget {
  const SelectQuantityDayPage({super.key});

  @override
  State<SelectQuantityDayPage> createState() => _SelectQuantityDayPageState();
}

class _SelectQuantityDayPageState extends State<SelectQuantityDayPage> {
  int? _selectedDays;

  void _onQuantitySelected(int? days) {
    setState(() {
      _selectedDays = days;
    });
  }

  void _onNextPressed() {
    if (_selectedDays == null) {
      toastification.show(
        icon: Assets.icons.linear.svg.closeCircle.svg(
          colorFilter: const ColorFilter.mode(
            CommonColors.errorColor,
            BlendMode.srcIn,
          ),
        ),
        borderSide: const BorderSide(color: CommonColors.errorColor),
        type: ToastificationType.error,
        style: ToastificationStyle.flatColored,
        title: const Text('Please fill in all fields'),
        autoCloseDuration: const Duration(seconds: 3),
      );
    } else {
      context.read<PlanGenerationBloc>().add(
            QuantityDaysPicked(_selectedDays!),
          );
      context.go('/intro/location/duration/trip_type');
    }
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
                child: SelectableDurationList(
                  onQuantitySelected: _onQuantitySelected,
                ),
              ),
            ],
          ),
        ),
      ),
      bottomBar: BottomActionBar(
        label: 'Next',
        onPressed: _onNextPressed,
      ),
    );
  }
}
