import 'package:anime_project/UI/Logo.dart';
import 'package:anime_project/components/ThemeSwitcher.dart';
import 'package:anime_project/screens/AllAnimesScreen/AllAnimesScreen.dart';
import 'package:anime_project/screens/initialScreen/InitialScreen.dart';
import 'package:anime_project/screens/subAnimesScreen/SubAnimesScreen.dart';
import 'package:anime_project/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SideMenu extends StatefulWidget {
  final BuildContext newContext;
  const SideMenu({super.key, required this.newContext});

  @override
  State<SideMenu> createState() => _SideMenuState();
}

class _SideMenuState extends State<SideMenu> {

  @override
  Widget build(BuildContext context) {
    String theme = Provider.of<ThemeProvider>(context).theme;

    return Drawer(
      // backgroundColor: Theme.of(context).primaryColor,
      surfaceTintColor: Colors.blue,

      child: ListView(
        padding: EdgeInsets.only(top: 0),
        children: <Widget>[
          ListTile(
            tileColor: Theme.of(context).appBarTheme.backgroundColor,
            title:  Padding(
              padding: const EdgeInsets.only(top: 40, bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Logo(size: 1.2),
                  ThemeSwitcher(theme: theme)
                ],
              ),
            ),
            onTap: () {
              // Ação ao selecionar o item 1
            },
          ),
          ...criarItensWidgets(context: context)
          // Adicione mais ListTile conforme necessário
        ],
      ),
    );
  }

  List<Widget> criarItensWidgets({required BuildContext context}) {
    TextTheme _textTheme = Theme.of(context).textTheme;

    List<Map> itens = [
      {"name": "Inicio", "route": "/", "widget": const InitialScreen()},
      {"name": "Todos", "route": "/all", "widget": const AllAnimesScreen()},
      {"name": "Animes Legendados", "route": "/sub_animes", "widget": const SubAnimesScreen()},
    /*{"name": "Animes Dublados", "route": "/dub_animes", "widget": null},
    {"name": "Episodios", "route": "/episodes", "widget": null},
    {"name":"Gêneros", "route": "/genders", "widget": null}*/
    ];


    return itens
        .map((dynamic e) => ListTile(
              title:
                  Text(e["name"], style: _textTheme.titleLarge,),
              onTap: () {

                Navigator.of(context).pop();
                  Future.delayed(const Duration(milliseconds: 300), () => {
                    if(true){
                      Navigator.pushReplacement(
                        widget.newContext, MaterialPageRoute(
                          builder: (BuildContext context) => e['widget'],
                      )),
                    }
                  });
              },
            ))
        .toList();
  }
}
