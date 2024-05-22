import 'package:anime_project/UI/AnimeScaffold.dart';
import 'package:anime_project/components/Pagination.dart';
import 'package:anime_project/screens/AllAnimesScreen/AnimeList.dart';
import 'package:anime_project/utils/Utils.dart';
import 'package:flutter/material.dart';

class AllAnimesScreen extends StatefulWidget {
  const AllAnimesScreen({super.key});

  @override
  State<AllAnimesScreen> createState() => _AllAnimesScreenState();
}

class _AllAnimesScreenState extends State<AllAnimesScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimeScaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const VerticalSpacing(space: 10),
                select(),
                const VerticalSpacing(space: 20),
                const AnimeList(),
              ],
            ),
            Column(
              children: [
                Pagination(pages: 13,),
                const VerticalSpacing(space: 20)
              ],
            )
          ],
        )
    );
  }


  Widget select() {
    List<DropdownMenuItem<String>> items = [];
    String selectedValue = 'A';
    List<String> alphabetList = [
      'A',
      'B',
      'C',
      'D',
      'E',
      'F',
      'G',
      'H',
      'I',
      'J',
      'K',
      'L',
      'M',
      'N',
      'O',
      'P',
      'Q',
      'R',
      'S',
      'T',
      'U',
      'V',
      'W',
      'X',
      'Y',
      'Z',
      '0 - 9'
    ];
    TextTheme textTheme = Theme.of(context).textTheme;

    items = alphabetList.map((e) {
      return DropdownMenuItem<String>(
        value: e,
        child: Text(e),
      );
    }).toList();

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DropdownButton<String>(
                value: selectedValue,
                onChanged: (String? value) {
                  setState(() {
                    selectedValue = value!;
                  });
                },
                // style: textTheme.bodyLarge,
                dropdownColor: Colors.black54,
                isDense: true,
                menuMaxHeight: 300,
                iconEnabledColor: Colors.red,
                underline:
                const Divider(color: Colors.red, endIndent: 5, height: 0),
                items: items,
              ),
              Text("Letter: $selectedValue",
                  style: textTheme.headlineSmall),
            ],
          ),
        ),
        const Divider(
          thickness: 2,
        ),
      ],
    );
  }
}
