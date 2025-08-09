import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/news_model.dart';
import '../networks/api_service.dart';
import 'news_state.dart';

class NewsCubit extends Cubit<NewsState> {
  NewsCubit() : super(NewsLoading());
  final ApiService apiService = ApiService();
  List<NewsModel> articles = [];
  String? category;

  void getArticles({required String? category}) async {
    articles = await apiService.getNews(category ?? "general");
    if (articles.isNotEmpty){
      emit(NewsLoaded(articles));
    } else {
      emit(NewsError("No articles found for this category"));
    }

    
  }
}
