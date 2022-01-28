import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:simple_news/presentation/pages/detail/detail_page_args.dart';

import '../../../../core/utils.dart';
import '../../../../domain/model/article.dart';
import '../../detail/detail_page.dart';

class NewsItem extends StatelessWidget {
  final Article article;
  const NewsItem({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await Navigator.of(context).pushNamed(
          DetailPage.routeName,
          arguments: DetailPageArgs(article),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: CachedNetworkImage(
                imageUrl: article.urlToImage,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Align(
            alignment: AlignmentDirectional.topStart,
            child: Text(
              '${article.source.name}, ${article.publishedAt.toFormattedDate()}',
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            article.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ],
      ),
    );
  }
}
