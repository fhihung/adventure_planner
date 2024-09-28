import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_event.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/selectable_list_tile.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/resources/generated/assets.gen.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';
import 'package:toastification/toastification.dart';

class TripTypePage extends StatefulWidget {
  const TripTypePage({super.key});

  @override
  State<TripTypePage> createState() => _TripTypePageState();
}

class _TripTypePageState extends State<TripTypePage> {
  final selectedTripTypes = <String>[];

  void onTypeSelected(
    String tripType, {
    required bool isSelected,
  }) {
    setState(() {
      if (isSelected) {
        selectedTripTypes.add(tripType);
      } else {
        selectedTripTypes.remove(tripType);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SheetContentScaffold(
      appBar: SharedAppBarHero(
        appbar: AppBar(),
      ),
      body: ListView.builder(
        itemCount: tripType.length + 1,
        itemBuilder: (context, index) {
          return index == 0
              ? const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 32, vertical: 8),
                  child: Text(
                    'Select trip type to get started (3/3)',
                    style: AppTextStyle.headline4,
                  ),
                )
              : SelectableListTile(
                  padding: const EdgeInsets.only(left: 16),
                  title: tripType[index - 1],
                  onSelected: (isSelected) {
                    onTypeSelected(
                      tripType[index - 1],
                      isSelected: isSelected,
                    );
                  },
                );
        },
      ),
      bottomBar: BottomActionBar(
        label: 'Next',
        onPressed: () {
          if (selectedTripTypes.isEmpty) {
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
              title: const Text('Please select at least one trip type'),
              autoCloseDuration: const Duration(seconds: 3),
            );
          } else {
            context.read<PlanGenerationBloc>().add(
                  TripTypePicked(selectedTripTypes),
                );
            context.go('/intro/location/duration/trip_type/confirm');
          }
        },
      ),
    );
  }
}

const tripType = [
  'Relax',
  'Nature',
  'Standard',
  'Road Trip',
  'Family',
  'Friends',
  'Honeymoon',
  'Adventure',
  'Cultural',
  'Beach',
  'Mountain',
  'Historical',
  'Luxury',
  'Wellness',
  'Eco-Tourism',
  'City Break',
  'Camping',
  'Skiing',
  'Wildlife',
];
