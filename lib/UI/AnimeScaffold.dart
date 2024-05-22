import 'package:flutter/material.dart';

import '../components/SideMenu.dart';
import 'Logo.dart';

class AnimeScaffold extends StatefulWidget {
  final Widget child;

  const AnimeScaffold({required this.child, super.key});

  @override
  State<AnimeScaffold> createState() => _AnimeScaffoldState();
}

class _AnimeScaffoldState extends State<AnimeScaffold> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title:  const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Logo(),
            Icon(
              Icons.person,
              color: Colors.red,
              size: 40,
            )
          ],
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.menu,
            color: Colors.red,
            size: 35,
          ),
          onPressed: () {
            _scaffoldKey.currentState?.openDrawer();
          },
        ),
      ),
      drawer: SideMenu(newContext: context),
      body: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          decoration: BoxDecoration(color: Theme.of(context).scaffoldBackgroundColor),
          child: widget.child),
      // backgroundColor:  const Color.fromARGB(255, 22, 26, 29),
    );
  }
}
