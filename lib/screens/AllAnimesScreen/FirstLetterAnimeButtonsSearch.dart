import 'package:anime_project/components/SmallButton.dart';
import 'package:flutter/material.dart';

class FirstLetterAnimeSearch extends StatefulWidget {
  final List<String> buttons;
  final List<bool> statusList;
  final Function updateStatusList;
  final int line;
  const FirstLetterAnimeSearch({required this.line, required this.buttons, required this.statusList, required this.updateStatusList, super.key});

  @override
  State<FirstLetterAnimeSearch> createState() => _FirstLetterAnimeSearchState();
}

class _FirstLetterAnimeSearchState extends State<FirstLetterAnimeSearch> {
  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      color: Colors.deepOrange,
      selectedColor: Colors.red,
      //selectedBorderColor: Colors.white,
      fillColor: Colors.red,
      splashColor: const Color(0xff1b4965),
      hoverColor: Colors.amberAccent,
      borderRadius: BorderRadius.circular(4.0),
      constraints: const BoxConstraints(minHeight: 36.0),
      isSelected: widget.statusList,
      // direction: Axis.vertical,

      onPressed: (index) {
        // Respond to button selection
        setState(() {
          widget.updateStatusList([widget.line, index]);
        });
      },
      children: widget.buttons.map((String e) {
          return SmallButton(text: e,);
        }).toList(),

    );
  }
}
