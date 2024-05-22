import 'package:anime_project/theme/theme_constants.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
  ThemeData _themeData = lightTheme;
  String _theme = 'light';

  ThemeData get themeData => _themeData;

  String get theme => _theme;

  set themeData(themeData){
    _themeData = themeData;
    notifyListeners();
  }

  set theme(theme){
    _theme = theme;
    // notifyListeners();
  }

  void toggleTheme(){
    if(_themeData == darkTheme){
      themeData = lightTheme;
      theme = 'light';
    } else {
      themeData = darkTheme;
      theme = 'dark';
    }
    print("O tema foi trocado, e o atual/novo é: $_themeData");
  }

  void setInitialTheme({required String cacheTheme}) {
    print("o cache theme quando recarrega é: $cacheTheme ");
    _themeData = cacheTheme == 'light' ? lightTheme : darkTheme;
    theme = cacheTheme;
  }
}