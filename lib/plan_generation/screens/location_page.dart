import 'package:adventure_planner/plan_generation/bloc/plan_generation_bloc.dart';
import 'package:adventure_planner/plan_generation/bloc/plan_generation_event.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/selectable_chip.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/utils/constants/app_spaces.dart';
import 'package:adventure_planner/utils/constants/common_colors.dart';
import 'package:adventure_planner/utils/theme/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({super.key});

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final List<String> _selectedLocations = [];

  void _onLocationSelected(String location) {
    setState(() {
      if (_selectedLocations.contains(location)) {
        _selectedLocations.remove(location);
      } else {
        _selectedLocations.add(location);
      }
    });
  }

  void _onNextPressed() {
    context.read<PlanGenerationBloc>().add(
          LocationPicked(_selectedLocations),
        );
    context.go('/intro/location/duration');
  }

  @override
  Widget build(BuildContext context) {
    return SheetContentScaffold(
      appBar: SharedAppBarHero(appbar: AppBar()),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text(
              'Where will you want to travel? (1/3)',
              style: AppTextStyle.headline4,
            ),
            const SizedBox(height: 24),
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
                  hintText: 'Where will you want to travel?',
                  hintStyle: AppTextStyle.caption,
                ),
              ),
            ),
            const SizedBox(height: AppSpaces.space5),
            Wrap(
              spacing: 10,
              children: [
                for (final location in _locations)
                  SelectableChip(
                    label: Text(location),
                    isSelected: _selectedLocations.contains(location),
                    onSelected: (isSelected) => _onLocationSelected(location),
                  ),
              ],
            ),
          ],
        ),
      ),
      bottomBar: BottomActionBar(
        label: 'Next',
        onPressed: _onNextPressed,
      ),
    );
  }
}

const _locations = [
  'Hà Nội',
  'Hạ Long',
  'Sapa',
  'Đà Nẵng',
  'Hội An',
  'Huế',
  'Nha Trang',
  'Đà Lạt',
  'Phú Quốc',
  'Cần Thơ',
  'Côn Đảo',
  'Mũi Né',
  'Phan Thiết',
  'Vũng Tàu',
  'TP. Hồ Chí Minh',
  'Tam Đảo',
  'Quy Nhơn',
  'Bình Ba',
  'Cao Bằng',
  'Bắc Kạn',
  'Ba Bể',
  'Tràng An',
  'Phong Nha - Kẻ Bàng',
];
