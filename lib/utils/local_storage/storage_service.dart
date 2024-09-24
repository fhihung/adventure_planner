import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService {
  factory StorageService() {
    return _instance;
  }

  StorageService._internal();

  static final StorageService _instance = StorageService._internal();

  Future<void> saveUserId(String userId) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('userId', userId);
  }

  Future<String?> getUserId() async {
    final prefs = await SharedPreferences.getInstance();
    final userId = prefs.getString('userId');
    return userId;
  }

  Future<void> saveToken(String token) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', token);
  }

  Future<String?> getToken() async {
    final prefs = await SharedPreferences.getInstance();
    final token = prefs.getString('token');
    return token;
  }

  Future<void> clear() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove('token');
    await prefs.remove('userId');
  }

  Future<void> setOnboardingComplete() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_complete', true);
  }

  Future<bool> isOnboardingComplete() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('onboarding_complete') ?? false;
  }

  // Future<void> setDarkTheme({required bool isDarkTheme}) async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setBool('isDarkMode', isDarkTheme);
  // }
  //
  // Future<bool> isDarkTheme() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   return prefs.getBool('isDarkMode') ?? false;
  // }
  Future<void> setThemeMode({required ThemeMode themeMode}) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt('theme_mode', themeMode.index);
  }

  Future<ThemeMode?> getThemeMode() async {
    final prefs = await SharedPreferences.getInstance();
    final themeModeIndex = prefs.getInt('theme_mode');
    if (themeModeIndex != null) {
      return ThemeMode.values[themeModeIndex];
    }
    return null;
  }
}
