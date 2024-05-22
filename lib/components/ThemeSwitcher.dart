import 'package:anime_project/cache_management/Preferences.dart';
import 'package:anime_project/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class ThemeSwitcher extends StatefulWidget {
  final String? theme;
  const ThemeSwitcher({super.key, this.theme});

  @override
  State<ThemeSwitcher> createState() => _ThemeSwitcherState();
}

class _ThemeSwitcherState extends State<ThemeSwitcher> {

  @override
  Widget build(BuildContext context) {

    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(15)),
      child: GestureDetector(
        onTap: () => {
              setState(() {
            Preferences.changeTheme(
                currentTheme: widget.theme!
            ).then((value) => Provider.of<ThemeProvider>(context, listen: false).toggleTheme());
              }),
        },
        child: Container(
          color: Colors.white54,
          width: 70,
          height: 30,
          child:  Stack(
              alignment: Alignment.center,
              children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.sunny),
                  Icon(Icons.nightlight_round)
                ],
              ),
              AnimatedPositioned(
                duration: const Duration(milliseconds: 400),
                left: widget.theme == 'light'  ? 5 : 40,
                child: ClipRRect(
                  borderRadius: BorderRadiusDirectional.circular(15),
                  child: Container(
                    width: 25,
                    height: 25,
                    color: Colors.red,
                  ),
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
