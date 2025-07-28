class NewsModel {
  String? title;
  String? description;
  String? url;
  String? publishedAt;

  NewsModel({this.title, this.description, this.url, this.publishedAt});

 factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      description: json['description'],
      url: json['urlToImage'] ?? '',
      publishedAt: json['publishedAt'],
    );
  }

  

}
