import 'package:anime_project/UI/AnimeScaffold.dart';
import 'package:anime_project/components/CarouselAnime.dart';
import 'package:anime_project/components/SearchField.dart';
import 'package:anime_project/screens/initialScreen/AnimesListPreviewSection.dart';
import 'package:anime_project/screens/initialScreen/EpisodesListPreviewSection.dart';
import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {

  @override
  Widget build(BuildContext context) {

    return  AnimeScaffold(
      child:  FutureBuilder<Widget>(
        future: fetchSomeData(), // Passa a função que retorna o Future
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator()); // Exibe um indicador de carregamento enquanto os dados estão sendo buscados
          } else if (snapshot.hasError) {
            return const Center(child: Text('Erro ao carregar dados')); // Exibe uma mensagem de erro, caso ocorra
          } else {
            // Caso os dados tenham sido carregados com sucesso
            return SizedBox(child: snapshot.data);
          }
        },
      ),
    );
  }

  Future<Widget> fetchSomeData() async {
    // Simulação de uma operação assíncrona que busca dados
    await Future.delayed(const Duration(seconds: 2)); // Simulação de uma operação de 2 segundos
    return SizedBox(
      width: double.infinity,
      child: ListView(
        children: [
          const SizedBox(
            height: 10,
          ),
          const SearchField(),
          const SizedBox(
            height: 10,
          ),
          const CarouselAnime(),
          const SizedBox(
            height: 30,
          ),
          const EpisodesListPreviewSection(),
          const SizedBox(
            height: 30,
          ),
          const AnimesListPreviewSection(),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 100,
            color: const Color.fromARGB(200, 43, 45, 66),
          )
        ],
      ),
    ); // Retorna um valor inteiro (poderiam ser dados reais)
  }
}
