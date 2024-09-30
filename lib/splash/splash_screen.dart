import 'package:adventure_planner/app/common_bottom_navigation.dart';
import 'package:adventure_planner/login/screens/login_screen.dart';
import 'package:adventure_planner/utils/local_storage/storage_service.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _checkAuthentication();
  }

  Future<void> _checkAuthentication() async {
    final storageService = StorageService();
    final token = await storageService.getToken(); // Lấy token từ Storage

    if (token != null) {
      await Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) => CommonBottomNavigation(),
        ),
      );
    } else {
      await Navigator.push(
        context,
        MaterialPageRoute<void>(
          builder: (context) => LoginScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
