import '../models/news_model.dart';

abstract class NewsState {}



final class NewsLoading extends NewsState {}

final class NewsLoaded extends NewsState {
  final List<NewsModel> articles;

  NewsLoaded(this.articles);
}

final class NewsError extends NewsState {
  final String message;

  NewsError(this.message);
}
