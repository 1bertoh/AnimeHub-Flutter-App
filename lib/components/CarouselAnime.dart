import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselAnime extends StatefulWidget {
  const CarouselAnime({super.key});

  @override
  State<CarouselAnime> createState() => _CarouselAnimeState();
}

class _CarouselAnimeState extends State<CarouselAnime> {
  final CarouselController _carouselController = CarouselController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          carouselController: _carouselController,
          items: [
            SizedBox(
              width: double.infinity,
              child: Image.asset("assets/images/naruto_capa.jpg", fit: BoxFit.cover),
            ),
            SizedBox(
              width: double.infinity,
            child: Image.asset("assets/images/BHA_capa.webp", fit: BoxFit.cover),
            ),
            SizedBox(
              width: double.infinity,
            child: Image.asset("assets/images/AOT_capa.jpg", fit: BoxFit.cover),
            ),
            // Adicione mais Container conforme necessário para mais itens no carrossel
          ],
          options: CarouselOptions(
            height: 200, // Altura do carrossel
            enableInfiniteScroll: true, // Rotação infinita
            enlargeCenterPage: false, // Aumenta o item central
            autoPlay: true, // Reprodução automática
            autoPlayInterval: const Duration(milliseconds: 8000), // Intervalo entre os slides
            autoPlayAnimationDuration: const Duration(milliseconds: 800), // Duração da animação
            autoPlayCurve: Curves.fastOutSlowIn, // Curva de animação
            scrollDirection: Axis.horizontal, // Direção do scroll (horizontal neste caso)
            viewportFraction: 1,
            onPageChanged: (index, reason) {
              setState(() {
                _currentPage = index;
              });
            },
          ),

        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(
            3, // Número total de páginas (ajuste conforme a quantidade de itens)
                (index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 300),
                width: _currentPage == index ? 16.0 : 16.0,
                height: 16.0,
                margin: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: _currentPage == index ? Colors.red : Colors.white,
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
