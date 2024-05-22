import 'package:anime_project/cache_management/Preferences.dart';
import 'package:anime_project/material_app/MaterialAppContainer.dart';
import 'package:anime_project/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => ThemeProvider(), child: const MyApp(),) );
}

class MyApp extends StatefulWidget {

  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Preferences.getTheme(),
      builder: (context, snapshot) {
        if(snapshot.connectionState == ConnectionState.done) {
          print("Esse é o valor retornado pelo cache quando o app é recarrega e o valor irá pro setInitialStat: ${snapshot.data}");
          if (count == 0) {
            Provider.of<ThemeProvider>(context).setInitialTheme(cacheTheme: snapshot.data!);
            count += 1;
          }
            // print(theme);
            return  const MaterialAppContainer();
        } else {
          return const CircularProgressIndicator();
        }
      }
    );
  }
}
