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
import 'package:toastification/toastification.dart';

class CurrentLocationPage extends StatefulWidget {
  const CurrentLocationPage({super.key});

  @override
  State<CurrentLocationPage> createState() => _CurrentLocationPageState();
}

class _CurrentLocationPageState extends State<CurrentLocationPage> {
  final TextEditingController locationController = TextEditingController();
  final TextEditingController budgetController = TextEditingController();
  final TextEditingController peopleController = TextEditingController();

  // GlobalKey for form validation
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PlanGenerationBloc, PlanGenerationState>(
      builder: (context, state) {
        return SheetContentScaffold(
          appBar: SharedAppBarHero(appbar: AppBar()),
          body: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(
              vertical: 8,
              horizontal: 32,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text(
                    "What's your current location? (1/4)",
                    style: AppTextStyle.headline4,
                  ),
                  const SizedBox(height: 24),

                  // Current Location Field with Icon and Template
                  const Text(
                    'Current Location',
                    style: AppTextStyle.hairline1,
                  ),
                  const SizedBox(height: 8),
                  _buildTextField(
                    context,
                    controller: locationController,
                    hint: 'Enter your current location',
                    icon: Assets.icons.linear.svg.location.svg(),
                  ),
                  const SizedBox(height: AppSpaces.space5),
                  const Text('Choose from templates:', style: AppTextStyle.body2),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      _buildTemplateButton('Hà Nội ', locationController),
                      _buildTemplateButton('Hồ Chí Minh', locationController),
                      _buildTemplateButton('Hải Phòng', locationController),
                    ],
                  ),
                  const SizedBox(height: AppSpaces.space7),

                  // Budget Field with Icon and Template
                  const Text(
                    'Budget',
                    style: AppTextStyle.hairline1,
                  ),
                  const SizedBox(height: 8),
                  _buildTextField(
                    context,
                    controller: budgetController,
                    hint: 'Enter your budget',
                    icon: Assets.icons.linear.svg.coins.svg(),
                    inputType: TextInputType.number,
                  ),
                  const SizedBox(height: AppSpaces.space5),
                  const Text('Choose from templates:', style: AppTextStyle.body2),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      _buildTemplateButton('2 triệu', budgetController),
                      _buildTemplateButton('5 triệu', budgetController),
                      _buildTemplateButton('10 triệu', budgetController),
                      _buildTemplateButton('15 triệu', budgetController),
                      _buildTemplateButton('20 triệu', budgetController),
                      _buildTemplateButton('30 triệu', budgetController),
                    ],
                  ),
                  const SizedBox(height: AppSpaces.space7),

                  // Number of People Field with Icon and Template
                  const Text(
                    'Number of People',
                    style: AppTextStyle.hairline1,
                  ),
                  const SizedBox(height: 8),
                  _buildTextField(
                    context,
                    controller: peopleController,
                    hint: 'Enter number of people',
                    icon: Assets.icons.linear.svg.people.svg(),
                    inputType: TextInputType.number,
                  ),
                  const SizedBox(height: AppSpaces.space5),
                  const Text('Choose from templates:', style: AppTextStyle.body2),
                  const SizedBox(height: 8),
                  Wrap(
                    spacing: 8,
                    children: [
                      _buildTemplateButton('1', peopleController),
                      _buildTemplateButton('2', peopleController),
                      _buildTemplateButton('4', peopleController),
                    ],
                  ),
                  const SizedBox(height: AppSpaces.space7),
                ],
              ),
            ),
          ),
          bottomBar: BottomActionBar(
            label: 'Next',
            onPressed: () {
              if (locationController.text.isEmpty || budgetController.text.isEmpty || peopleController.text.isEmpty) {
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
                return;
              }
              context.read<PlanGenerationBloc>().add(
                    CurrentLocationPicked(
                      locationController.text,
                      budgetController.text,
                      peopleController.text,
                    ),
                  );
              context.go('/intro/location');
            },
          ),
        );
      },
    );
  }

  // Builds a text field with validation
  Widget _buildTextField(
    BuildContext context, {
    required TextEditingController controller,
    required String hint,
    required Widget icon,
    TextInputType inputType = TextInputType.text,
  }) {
    return Container(
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
        controller: controller,
        textAlignVertical: TextAlignVertical.center,
        cursorColor: CommonColors.neutrals2,
        keyboardType: inputType,
        decoration: InputDecoration(
          prefixIconConstraints: const BoxConstraints(
            minWidth: 40,
          ),
          prefixIcon: icon,
          // Icon added here
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),

          errorBorder: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.transparent,
            ),
          ),
          isCollapsed: true,
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: AppSpaces.space5,
            vertical: AppSpaces.space5,
          ),
          hintText: hint,
          hintStyle: AppTextStyle.caption,
        ),
        // validator: validator, // Validator function
      ),
    );
  }

  Widget _buildTemplateButton(String label, TextEditingController controller) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          controller.text = label;
        });
      },
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        backgroundColor: CommonColors.neutrals6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(90),
        ),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: CommonColors.neutrals2,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
