import 'dart:async';

import 'package:adventure_planner/login/widgets/login_form.dart';
import 'package:adventure_planner/plan_generation/screens/complete_page.dart';
import 'package:adventure_planner/plan_generation/screens/confirm_page.dart';
import 'package:adventure_planner/plan_generation/screens/current_location.dart';
import 'package:adventure_planner/plan_generation/screens/generating_page.dart';
import 'package:adventure_planner/plan_generation/screens/intro_page.dart';
import 'package:adventure_planner/plan_generation/screens/location_page.dart';
import 'package:adventure_planner/plan_generation/screens/quantity_day_page.dart';
import 'package:adventure_planner/plan_generation/screens/trip_type_page.dart';
import 'package:adventure_planner/sign_up/pages/sign_up_page.dart';
import 'package:adventure_planner/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

import 'common_bottom_navigation.dart';

// ----------------------------------------------------------
// Routes
// ----------------------------------------------------------

final sheetTransitionObserver = NavigationSheetTransitionObserver();

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
      routes: [_sheetShellRoute, _loginRoute, _signUpRoute],
    ),
  ],
);

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
  routes: [_introRoute, _loginRoute, _signUpRoute],
);

final _loginRoute = GoRoute(
  path: 'login',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: LoginForm());
  },
  routes: [_signUpRoute, _introRoute, _bottomNavigation],
);

final _signUpRoute = GoRoute(
  path: 'sign_up',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: SignUpPage());
  },
  routes: [
    _introRoute,
  ],
);
final _bottomNavigation = GoRoute(
  path: 'bottom_navigation',
  builder: (context, state) {
    return const CommonBottomNavigation();
  },
  routes: [
    _introRoute,
    _signUpRoute,
  ],
);

final _introRoute = GoRoute(
  path: 'intro',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: IntroPage());
  },
  routes: [_chooseLocationRoute, _chooseCurrentLocationRoute],
);

final _chooseCurrentLocationRoute = GoRoute(
  path: 'current_location',
  pageBuilder: (context, state) {
    return const ScrollableNavigationSheetPage(
      child: SheetKeyboardDismissible(
        dismissBehavior: SheetKeyboardDismissBehavior.onDragDown(),
        child: CurrentLocationPage(),
      ),
    );
  },
);
final _chooseLocationRoute = GoRoute(
  path: 'location',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: LocationPage());
  },
  routes: [_selectQuantityDayRoute],
);

final _selectQuantityDayRoute = GoRoute(
  path: 'duration',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: SelectQuantityDayPage());
  },
  routes: [_tripTypeRoute],
);

final _tripTypeRoute = GoRoute(
  path: 'trip_type',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(
      child: TripTypePage(),
    );
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
  routes: [_generateRoute, _completeRoute],
);

final _generateRoute = GoRoute(
  path: 'generate',
  pageBuilder: (context, state) {
    return const DraggableNavigationSheetPage(child: GeneratingPage());
  },
  routes: [_completeRoute],
);
final _completeRoute = GoRoute(
  path: 'complete',
  pageBuilder: (context, state) {
    return const ScrollableNavigationSheetPage(
      initialExtent: Extent.proportional(0.7),
      minExtent: Extent.proportional(0.7),
      physics: BouncingSheetPhysics(
        parent: SnappingSheetPhysics(),
      ),
      child: CompletePage(),
    );
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
        onPopInvokedWithResult: (didPop, result) async {
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
            borderRadius: BorderRadius.circular(16),
            clipBehavior: Clip.antiAlias,
            child: navigator,
          ),
        ),
      ),
    );
  }
}
