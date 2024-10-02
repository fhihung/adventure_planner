import 'package:flutter/material.dart';
import 'package:smooth_sheets/smooth_sheets.dart';

class CommonModalSheet {
  static void show(
    BuildContext context, {
    required bool isFullScreen,
    required Widget child,
  }) {
    final modalRoute = CupertinoModalSheetRoute<void>(
      barrierDismissible: false,
      builder: (context) {
        if (isFullScreen) {
          return FullScreenSheet(child: child);
        } else {
          return HalfScreenSheet(child: child);
        }
      },
    );

    Navigator.push(context, modalRoute);
  }

  static void showModalSheet(
    BuildContext context, {
    required bool isFullScreen,
    required Widget child,
  }) {
    final modalRoute = ModalSheetRoute<void>(
      barrierDismissible: false,
      builder: (BuildContext context) {
        return DraggableSheet(
          child: ClipRRect(
            borderRadius: const BorderRadius.all(
              Radius.circular(16),
            ),
            child: Material(child: child),
          ),
        );
      },
    );

    Navigator.push(
      context,
      modalRoute,
    );
  }
}

class FullScreenSheet extends StatelessWidget {
  const FullScreenSheet({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ScrollableSheet(
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(16),
        ),
        child: Material(child: child),
      ),
    );
  }
}

class HalfScreenSheet extends StatelessWidget {
  const HalfScreenSheet({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SheetKeyboardDismissible(
      dismissBehavior: const SheetKeyboardDismissBehavior.onDragDown(),
      child: DraggableSheet(
        initialPosition: const SheetAnchor.proportional(0.52),
        maxPosition: const SheetAnchor.proportional(0.52),
        minPosition: const SheetAnchor.proportional(0.52),
        // maxExtent: const Extent.proportional(0.52),
        // initialExtent: const Extent.proportional(0.52),
        // minExtent: const Extent.proportional(0.52),
        physics: const BouncingSheetPhysics(),
        child: ClipRRect(
          borderRadius: const BorderRadius.all(
            Radius.circular(16),
          ),
          child: Material(child: child),
        ),
      ),
    );
  }
}
