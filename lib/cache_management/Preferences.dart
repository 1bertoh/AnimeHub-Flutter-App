import 'package:shared_preferences/shared_preferences.dart';

class Preferences{

  static Future<String> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? theme = 'dark';

    if(prefs.containsKey("theme")){
      theme = prefs.getString('theme');
      print("Dentro do Preferences, func getTheme, após checar o cache e ter encontrado um tema, esse é o tema ${prefs.getString('theme')}");
    } else {
      prefs.setString("theme", "dark");
    print("else do getTheme");
    }
    print("fim do getTheme");
    theme = theme ?? 'dark';
    // Provider.of<ThemeProvider>(context).setInitialTheme(theme: theme);
    return theme;
  }

  static Future<String> changeTheme({required String currentTheme}) async {
    print("dentro do Preferences, o tema recebido que será o antigo é : $currentTheme");
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (currentTheme == 'dark') {
      prefs.setString('theme', 'light');

      print("na func changetheme, esse o novo valor contido no cache: ${prefs.getString('theme')}");
      return 'light';
    } else {
      prefs.setString('theme', 'dark');
      print("na func changetheme, esse o novo valor contido no cache: ${prefs.getString('theme')}");
      return 'dark';
    }
  }

}