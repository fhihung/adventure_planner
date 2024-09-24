import 'package:adventure_planner/plan_generation/bloc/plan_generation_event.dart';
import 'package:adventure_planner/plan_generation/widget/bottom_action_bar.dart';
import 'package:adventure_planner/plan_generation/widget/selectable_list_tile.dart';
import 'package:adventure_planner/plan_generation/widget/shared_appbar_hero.dart';
import 'package:adventure_planner/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import '../bloc/plan_generation_bloc.dart';

// class TripTypePage extends StatefulWidget {
//   const TripTypePage({super.key});
//
//   @override
//   _TripTypePageState createState() => _TripTypePageState();
// }
//
// class _TripTypePageState extends State<TripTypePage> {
//   final List<String> _selectedTripTypes = [];
//
//   void _onTypeSelected(String location) {
//     setState(() {
//       if (_selectedTripTypes.contains(location)) {
//         _selectedTripTypes.remove(location);
//       } else {
//         _selectedTripTypes.add(location);
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SheetContentScaffold(
//       appBar: SharedAppBarHero(appbar: AppBar()),
//       body: SingleChildScrollView(
//         padding: const EdgeInsets.symmetric(
//           vertical: 8,
//           horizontal: 32,
//         ),
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             const Text(
//               'What type of travel? (3/3)',
//               style: AppTextStyle.headline4,
//             ),
//             const SizedBox(height: 24),
//             Container(
//               height: AppSpaces.space10,
//               decoration: BoxDecoration(
//                 border: Border.all(
//                   color: CommonColors.neutrals4,
//                 ),
//                 color: Colors.transparent,
//                 borderRadius: BorderRadius.circular(90),
//               ),
//               alignment: Alignment.center,
//               child: TextFormField(
//                 textAlignVertical: TextAlignVertical.center,
//                 cursorColor: CommonColors.neutrals2,
//                 decoration: const InputDecoration(
//                   enabledBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.transparent,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(
//                       color: Colors.transparent,
//                     ),
//                   ),
//                   isCollapsed: true,
//                   isDense: true,
//                   contentPadding: EdgeInsets.symmetric(
//                     horizontal: AppSpaces.space5,
//                     vertical: AppSpaces.space5,
//                   ),
//                   hintText: 'Where will you want to travel?',
//                   hintStyle: AppTextStyle.caption,
//                 ),
//               ),
//             ),
//             const SizedBox(height: AppSpaces.space5),
//             Wrap(
//               spacing: 10,
//               children: [
//                 for (final type in tripType)
//                   SelectableChip(
//                     label: Text(type),
//                     isSelected: _selectedTripTypes.contains(type),
//                     onSelected: (isSelected) => _onTypeSelected(type),
//                   ),
//               ],
//             ),
//           ],
//         ),
//       ),
//       bottomBar: BottomActionBar(
//         label: 'Next',
//         onPressed: () {
//           context.read<PlanGenerationBloc>().add(
//                 TripTypePicked(_selectedTripTypes),
//               );
//           // You can store the selected trip type or use it in the navigation
//           // print('Selected trip type: $_selectedTripTypes'); // Print or use as needed
//           context.go('/intro/location/quantity-day/trip-type/confirm');
//         },
//       ),
//     );
//   }
// }
//
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

class TripTypePage extends StatefulWidget {
  const TripTypePage({super.key});

  @override
  State<TripTypePage> createState() => _TripTypePageState();
}

class _TripTypePageState extends State<TripTypePage> {
  final selectedTripTypes = <String>[]; // Để bên ngoài hàm build

  void onTypeSelected(String tripType, bool isSelected) {
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
              ? Padding(
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
                    onTypeSelected(tripType[index - 1], isSelected);
                  },
                );
        },
      ),
      bottomBar: BottomActionBar(
        label: 'Next',
        onPressed: () {
          context.read<PlanGenerationBloc>().add(
                TripTypePicked(selectedTripTypes),
              );
          context.go('/intro/location/quantity-day/trip-type/confirm');
          print('Selected Trip Types: $selectedTripTypes');
        },
      ),
    );
  }
}
