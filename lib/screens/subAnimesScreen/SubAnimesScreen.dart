import 'package:anime_project/components/SearchField.dart';
import 'package:flutter/material.dart';

import '../../UI/AnimeScaffold.dart';
import '../../components/Pagination.dart';
import '../../utils/Utils.dart';
import '../AllAnimesScreen/AnimeList.dart';

class SubAnimesScreen extends StatefulWidget {
  const SubAnimesScreen({super.key});

  @override
  State<SubAnimesScreen> createState() => _SubAnimesScreenState();
}

class _SubAnimesScreenState extends State<SubAnimesScreen> {
  @override
  Widget build(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;
    return  AnimeScaffold(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                const VerticalSpacing(space: 10),
                const SearchField(),
                const VerticalSpacing(space: 10),
                Text("Animes legendados",
                    textAlign: TextAlign.start,
                    style: textTheme.headlineSmall),
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
}
