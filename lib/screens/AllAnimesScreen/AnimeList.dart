import 'package:anime_project/screens/AllAnimesScreen/AnimeItem.dart';
import 'package:flutter/material.dart';

class AnimeList extends StatefulWidget {
  const AnimeList({super.key});

  @override
  State<AnimeList> createState() => _AnimeListState();
}

class _AnimeListState extends State<AnimeList> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
            AnimeItem(image: "assets/images/capa_anime.jpg", title: "Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1", width: 90, height: 172,),
          ],
        ),
      ],
    );
  }
}
