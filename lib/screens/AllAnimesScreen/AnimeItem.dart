
import 'package:flutter/material.dart';

class AnimeItem extends StatelessWidget {
  final String title;
  final String image;
  final double width;
  final double height;
  const AnimeItem({required this.title, this.height = 190, this.width = 100, required this.image, super.key});

  @override
  Widget build(BuildContext context) {
    TextTheme textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: width,
      height: height,
      child: Column(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(5), child: Image.asset(image, fit: BoxFit.cover, width: width,),),
          Text(title,
              style: textTheme.bodySmall?.copyWith(
                overflow: TextOverflow.ellipsis,
              ),
              softWrap: false,
              maxLines: 2,
              overflow: TextOverflow.ellipsis
          ),
        ],
      ),
    );
  }
}
