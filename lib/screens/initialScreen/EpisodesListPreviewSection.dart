import 'package:anime_project/components/SeeMoreButton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class EpisodesListPreviewSection extends StatefulWidget {
  const EpisodesListPreviewSection({super.key});

  @override
  State<EpisodesListPreviewSection> createState() => _EpisodesListPreviewSectionState();
}

class _EpisodesListPreviewSectionState extends State<EpisodesListPreviewSection> {
  @override
  Widget build(BuildContext context) {
  TextTheme textTheme = Theme.of(context).textTheme;

    return  Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Últimos episódios", style: textTheme.headlineSmall),
              SeeMoreButton(width: 75, height: 25, callBack: () => {})
            ],
          ),
        ),
        const Divider(thickness: 2,),
        CarouselSlider(
          items: [
            createtheList(textTheme),
            createtheList(textTheme),
            createtheList(textTheme),
          ],
          options: CarouselOptions(
            height: 210, // Altura do carrossel
            enableInfiniteScroll: false, // Rotação infinita
            enlargeCenterPage: false, // Aumenta o item central
            scrollDirection: Axis.horizontal, // Direção do scroll (horizontal neste caso)
            viewportFraction: 1,
          ),
        ),
      ],
    );
  }

  Widget createtheList(TextTheme textTheme){
    String image = "assets/images/anime_capa.jpg";
    double width = 110;


    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                SizedBox(
                  width: 120,
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                            style: textTheme.bodySmall?.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                            style: textTheme.bodySmall?.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),

          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                SizedBox(
                  width: 120,
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                            style: textTheme.bodySmall?.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                            style: textTheme.bodySmall?.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),

          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                SizedBox(
                  width: 120,
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                            style: textTheme.bodySmall?.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 120,
                  height: 100,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        child: Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                            style: textTheme.bodySmall?.copyWith(
                              overflow: TextOverflow.ellipsis,
                            ),
                            softWrap: false,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis
                        ),
                      ),
                    ],
                  ),
                ),
          ],
        ),
      ],
    );
  }
}
