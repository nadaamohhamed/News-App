import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/views/article_view.dart';
import 'package:news_app/widgets/news_tile.dart';

class NewListView extends StatelessWidget {
  const NewListView({
    super.key,
    required this.articles,
  });

  final List<ArticleModel> articles;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) {
                    return ArticleWebView(
                      articleUrl: articles[index].articleUrl,
                    );
                  },
                ),
              );
            },
            child: NewsTile(
              article: articles[index],
            ),
          );
        },
      ),
    );
  }
}
