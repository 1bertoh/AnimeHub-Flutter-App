import 'package:anime_project/components/SeeMoreButton.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class AnimesListPreviewSection extends StatefulWidget {
  const AnimesListPreviewSection({super.key});

  @override
  State<AnimesListPreviewSection> createState() => _AnimesListPreviewSectionState();
}

class _AnimesListPreviewSectionState extends State<AnimesListPreviewSection> {
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
              Text("Últimos animes", style: textTheme.headlineSmall),
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
            height: 390, // Altura do carrossel
            enableInfiniteScroll: false, // Rotação infinita
            enlargeCenterPage: false, // Aumenta o item central
            viewportFraction: 1,
          ),

        ),
      ],
    );
  }

  Widget createtheList(TextTheme textTheme){
    String image = "assets/images/capa_anime.jpg";
    double width = 110;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
                SizedBox(
                  width: 100,
                  height: 190,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                          style: textTheme.bodySmall?.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 190,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                          style: textTheme.bodySmall?.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis
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
                  width: 100,
                  height: 190,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                          style: textTheme.bodySmall?.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 190,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                          style: textTheme.bodySmall?.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis
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
                  width: 100,
                  height: 190,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5),child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                          style: textTheme.bodySmall?.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 100,
                  height: 190,
                  child: Column(
                    children: [
                      ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, /*fit: BoxFit.cover,*/ width: width),),
                      Text("Darling in the Franxx Episodio 2 Darling in the Franxx Episodio 1",
                          style: textTheme.bodySmall?.copyWith(
                            overflow: TextOverflow.ellipsis,
                          ),
                          softWrap: false,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis
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
