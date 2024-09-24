import 'dart:async';

import 'package:adventure_planner/login/screens/login_screen.dart';
import 'package:adventure_planner/plan_generation/screens/confirm_page.dart';
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
    return const DraggableNavigationSheetPage(child: _GeneratingPage());
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

class _GeneratingPage extends StatelessWidget {
  const _GeneratingPage();

  @override
  Widget build(BuildContext context) {
    return SheetContentScaffold(
      appBar: _SharedAppBarHero(appbar: AppBar()),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Generating your playlist...',
                  style: Theme.of(context).textTheme.headlineMediumBold,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 64),
                  child: CircularProgressIndicator(strokeWidth: 6),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ----------------------------------------------------------
// Utilities
// ----------------------------------------------------------

extension on TextTheme {
  TextStyle? get headlineMediumBold => headlineMedium?.copyWith(fontWeight: FontWeight.bold);
}

final _largeFilledButtonStyle = FilledButton.styleFrom(
  minimumSize: const Size.fromHeight(56),
);

final _largeTextButtonStyle = TextButton.styleFrom(
  minimumSize: const Size.fromHeight(56),
);

class _SelectableChip extends StatefulWidget {
  const _SelectableChip({
    required this.label,
  });

  final Widget label;

  @override
  State<_SelectableChip> createState() => _SelectableChipState();
}

class _SelectableChipState extends State<_SelectableChip> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      onSelected: (isSelected) {
        setState(() => this.isSelected = isSelected);
      },
      selected: isSelected,
      label: widget.label,
    );
  }
}

class _SelectableListTile extends StatefulWidget {
  const _SelectableListTile({
    required this.title,
    required this.padding,
  });

  final String title;
  final EdgeInsets padding;

  @override
  State<_SelectableListTile> createState() => _SelectableListTileState();
}

class _SelectableListTileState extends State<_SelectableListTile> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: CheckboxListTile(
        title: Text(widget.title),
        value: isSelected,
        onChanged: (selected) {
          setState(() => isSelected = selected!);
        },
      ),
    );
  }
}

class _SelectableMoodList extends StatefulWidget {
  const _SelectableMoodList();

  @override
  State<_SelectableMoodList> createState() => _SelectableMoodListState();
}

class _SelectableMoodListState extends State<_SelectableMoodList> {
  String? selectedMood = _moods.first.label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final mood in _moods)
          RadioListTile(
            title: Text(mood.label),
            secondary: Text(
              mood.emoji,
              style: const TextStyle(fontSize: 24),
            ),
            controlAffinity: ListTileControlAffinity.trailing,
            selected: mood.label == selectedMood,
            value: mood.label,
            groupValue: selectedMood,
            onChanged: (newMooed) => setState(() {
              selectedMood = newMooed;
            }),
          ),
      ],
    );
  }
}

class _BottomActionBar extends StatelessWidget {
  const _BottomActionBar({
    required this.label,
    required this.onPressed,
    this.showDivider = false,
  });

  final String label;
  final VoidCallback? onPressed;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    const horizontalPadding = 32.0;
    const verticalPadding = 16.0;

    // Insert bottom padding only if there's no system viewport bottom inset.
    final systemBottomInset = MediaQuery.of(context).padding.bottom;

    return StickyBottomBarVisibility(
      child: ColoredBox(
        color: Theme.of(context).colorScheme.surface,
        child: SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (showDivider) const Divider(height: 1),
              Padding(
                padding: EdgeInsets.fromLTRB(
                  horizontalPadding,
                  verticalPadding,
                  horizontalPadding,
                  systemBottomInset == 0 ? verticalPadding : 0,
                ),
                child: FilledButton(
                  onPressed: onPressed,
                  style: _largeFilledButtonStyle,
                  child: Text(label),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// This widget makes it possible to create a (visually) shared appbar across the pages.
///
/// For better maintainability, it is recommended to create a page-specific app bar for each page
/// instead of a single 'super' shared app bar that includes all the functionality for every page.
class _SharedAppBarHero extends StatelessWidget implements PreferredSizeWidget {
  const _SharedAppBarHero({
    required this.appbar,
  });

  final AppBar appbar;

  @override
  Size get preferredSize => appbar.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Hero(tag: 'HeroAppBar', child: appbar);
  }
}

// ----------------------------------------------------------
// Constants
// ----------------------------------------------------------

const _genres = [
  'Pop',
  'Rock',
  'Hip Hop',
  'R&B',
  'Country',
  'Jazz',
  'Classical',
  'Electronic',
  'Folk',
  'Reggae',
  'Blues',
  'Metal',
  'Punk',
  'Disco',
  'Funk',
  'Soul',
  'Techno',
  'House',
  'Ambient',
  'Indie',
  'Alternative',
  'K-Pop',
  'Latin',
];

const _moods = [
  (label: 'Energetic and Upbeat', emoji: '🎉'),
  (label: 'Laid-back and Chill:', emoji: '🍹'),
  (label: 'Mellow and Reflective', emoji: '🛌'),
  (label: 'Uplifting and Positive', emoji: '💪'),
];

const _seedTracks = [
  "Groove Odyssey",
  "Funky Fusion Fiesta",
  "Soul Serenade Shuffle",
  "Rhythm Revival Rendezvous",
  "Bassline Bliss",
  "Jazzed-up Jamboree",
  "Funkadelic Dreamscape",
  "Smooth Sunset Serenity",
  "Electric Euphoria Express",
  "Syncopation Celebration",
  "Funky Mirage Melody",
  "Saxophone Sunshine Soiree",
  "Dancefloor Diplomacy",
  "Bass Bounce Bonanza",
  "Vibraphone Voyage",
  "Funk Frontier Fantasy",
  "Sonic Soul Safari",
  "Guitar Groove Gala",
  "Brass Bliss Bouquet",
  "Funky Cosmic Carnival",
];
