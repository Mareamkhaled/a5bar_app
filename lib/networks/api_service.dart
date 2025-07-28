import 'package:dio/dio.dart';

import '../models/news_model.dart';

class ApiService {
  static const String baseUrl = 'https://newsapi.org/v2';
   Dio dio = Dio();

  Future<List<NewsModel>> getNews() async {
  var response = await dio.get('$baseUrl/top-headlines?country=us&apiKey=2ba79a18fdb6445daae819948c149be5');
  List articles = response.data['articles'];

  return articles.map((article) => NewsModel.fromJson(article)).toList();
  }
}
  

