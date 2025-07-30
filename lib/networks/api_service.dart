import 'package:dio/dio.dart';

import '../models/news_model.dart';

class ApiService {
  var dio = Dio(
    BaseOptions(
      baseUrl: "https://newsapi.org/v2/",
      connectTimeout: const Duration(seconds: 20),
      receiveTimeout: const Duration(seconds: 20),
    ),
  );

  Future<List<NewsModel>> getNews(String category) async {
    var response = await dio.get(
      'top-headlines?country=us&apiKey=2ba79a18fdb6445daae819948c149be5&category=$category',
    );
    List articles = response.data['articles'];

    return articles.map((article) => NewsModel.fromJson(article)).toList();
  }
}
