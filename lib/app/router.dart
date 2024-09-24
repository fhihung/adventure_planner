import 'dart:async';

import 'package:adventure_planner/login/screens/login_screen.dart';
import 'package:adventure_planner/plan_generation/screens/confirm_page.dart';
import 'package:adventure_planner/plan_generation/screens/generating_page.dart';
import 'package:adventure_planner/plan_generation/screens/intro_page.dart';
import 'package:adventure_planner/plan_generation/screens/location_page.dart';
import 'package:adventure_planner/plan_generation/screens/quantity_day_page.dart';
import 'package:adventure_planner/plan_generation/screens/trip_type_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

// ----------------------------------------------------------
// Routes
// ----------------------------------------------------------

final sheetTransitionObserver = NavigationSheetTransitionObserver();

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const LoginScreen(),
      routes: [_sheetShellRoute],
    ),
  ],
);

// A ShellRoute is used to create a new Navigator for nested navigation in the sheet.
final _sheetShellRoute = ShellRoute(
  observers: [sheetTransitionObserver],
  pageBuilder: (context, state, navigator) {
    // Use ModalSheetPage to show a modal sheet.
    return ModalSheetPage(
      swipeDismissible: true,
      child: _SheetShell(
        navigator: navigator,
        transitionObserver: sheetTransitionObserver,
      ),
    );
  },
  routes: [_introRoute],
);

final _introRoute = GoRoute(
  path: 'intro',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: IntroPage());
  },
  routes: [_chooseLocationRoute],
);
final _chooseLocationRoute = GoRoute(
  path: 'location',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: LocationPage());
  },
  routes: [_selectQuantityDayRoute],
);

final _selectQuantityDayRoute = GoRoute(
  path: 'quantity-day',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: SelectQuantityDayPage());
  },
  routes: [_tripTypeRoute],
);

final _tripTypeRoute = GoRoute(
  path: 'trip-type',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: TripTypePage());
  },
  routes: [_confirmRoute],
);

final _confirmRoute = GoRoute(
  path: 'confirm',
  pageBuilder: (context, state) {
    return const ScrollableNavigationSheetPage(
      initialExtent: Extent.proportional(0.7),
      minExtent: Extent.proportional(0.7),
      physics: BouncingSheetPhysics(
        parent: SnappingSheetPhysics(),
      ),
      child: ConfirmPage(),
    );
  },
  routes: [_generateRoute],
);

final _generateRoute = GoRoute(
  path: 'generate',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: GeneratingPage());
  },
);

// ----------------------------------------------------------
// Pages
// ----------------------------------------------------------

class _SheetShell extends StatelessWidget {
  const _SheetShell({
    required this.transitionObserver,
    required this.navigator,
  });

  final NavigationSheetTransitionObserver transitionObserver;
  final Widget navigator;

  @override
  Widget build(BuildContext context) {
    Future<bool?> showCancelDialog() {
      return showDialog<bool?>(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Are you sure?'),
            content: const Text(
              'Do you want to cancel the travel planning generation?',
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context, true),
                child: const Text('Yes'),
              ),
              TextButton(
                onPressed: () => Navigator.pop(context, false),
                child: const Text('No'),
              ),
            ],
          );
        },
      );
    }

    return SafeArea(
      bottom: false,
      child: PopScope(
        canPop: false,
        onPopInvoked: (didPop) async {
          if (!didPop) {
            final shouldPop = await showCancelDialog() ?? false;
            if (shouldPop && context.mounted) {
              context.go('/');
            }
          }
        },
        child: NavigationSheet(
          transitionObserver: sheetTransitionObserver,
          child: Material(
            // Add circular corners to the sheet.
            borderRadius: BorderRadius.circular(16),
            clipBehavior: Clip.antiAlias,
            child: navigator,
          ),
        ),
      ),
    );
  }
}
