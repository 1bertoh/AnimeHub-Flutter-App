import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/initialScreen/InitialScreen.dart';
import '../theme/theme_provider.dart';

class MaterialAppContainer extends StatefulWidget {
  const MaterialAppContainer({super.key});

  @override
  State<MaterialAppContainer> createState() => _MaterialAppContainerState();
}

class _MaterialAppContainerState extends State<MaterialAppContainer> {

  @override
  Widget build(BuildContext context) {
    print("Após ser recarregado o tema do Material é: ${Provider.of<ThemeProvider>(context).themeData}");
    return  MaterialApp(
      title: 'Flutter Demo',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home:  const InitialScreen(),
    );
  }
}
