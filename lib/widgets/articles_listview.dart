import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../networks/api_service.dart';
import 'news_item.dart';

class ArticlesListview extends StatefulWidget {
  const ArticlesListview({super.key});

  @override
  State<ArticlesListview> createState() => _ArticlesListviewState();
}

class _ArticlesListviewState extends State<ArticlesListview> {
  ApiService apiService = ApiService();
  List<NewsModel> articles = [];
  @override
  void initState() {
    getArticles();
    super.initState();
  }

  getArticles() async {
    articles = await apiService.getNews();
    //! important to call setState to update the UI after fetching data 
    setState(() {
      
    });
    // print(articles.length);
  }

  @override
  Widget build(BuildContext context) {
    return articles.isEmpty
    //! sliverToBoxAdapter is used to show a widget when the list is empty
        ? const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()),
        )
        //! sliverList.builder is used to build a list of widgets
        : SliverList.builder(
          itemCount: articles.length,
          itemBuilder: (context, index) => NewsItem(newsModel: articles[index]),
        );
  }
}
