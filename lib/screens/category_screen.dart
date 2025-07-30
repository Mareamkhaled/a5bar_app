import 'package:flutter/material.dart';

import '../models/news_model.dart';
import '../networks/api_service.dart';
import '../widgets/news_item.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key});

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  ApiService apiService = ApiService();
  List<NewsModel> articles = [];
  String? category;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // ignore: use_build_context_synchronously
      category = ModalRoute.of(context)?.settings.arguments as String;
      getArticles(category ?? "category news");
    });
  }

  getArticles(String category) async {
    articles = await apiService.getNews(category);
    //! important to call setState to update the UI after fetching data
    setState(() {});
    // print(articles.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          '$category News',
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body:
          articles.isEmpty
              ? const Center(child: CircularProgressIndicator())
              : Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListView.builder(
                  itemCount: articles.length,
                  itemBuilder:
                      (context, index) => NewsItem(newsModel: articles[index]),
                ),
              ),
    );
  }
}
