import 'package:flutter/material.dart';

enum ActiveScreen { dashboard, news, plays, profile }

class ScreenState extends ChangeNotifier {
  ActiveScreen _activeScreen = ActiveScreen.dashboard;

  ActiveScreen get activeScreen => _activeScreen;

  void setActiveScreen(ActiveScreen screen) {
    _activeScreen = screen;
    notifyListeners(); // Notify listeners to rebuild
  }
}
