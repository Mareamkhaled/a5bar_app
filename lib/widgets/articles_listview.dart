import 'package:flutter/material.dart';

import '../models/news_model.dart';

import 'news_item.dart';

class ArticlesListview extends StatelessWidget {
   const ArticlesListview({super.key, required this.articles});

  // final ApiService apiService = ApiService();
  final List<NewsModel> articles;
  // @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return NewsItem(newsModel: articles[index]);
        },
        childCount: articles.length,
      ),
    );
  }
}
