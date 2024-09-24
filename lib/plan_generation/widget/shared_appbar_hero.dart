import 'package:flutter/material.dart';

class SharedAppBarHero extends StatelessWidget implements PreferredSizeWidget {
  const SharedAppBarHero({
    required this.appbar,
    super.key,
  });

  final AppBar appbar;

  @override
  Size get preferredSize => appbar.preferredSize;

  @override
  Widget build(BuildContext context) {
    return Hero(tag: 'HeroAppBar', child: appbar);
  }
}
