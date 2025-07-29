class NewsModel {
  String title;
  String description;
  String urlToImage;
  String url;
  String? publishedAt;

  NewsModel({required this.title,required this.description,required this.urlToImage, this.publishedAt,required this.url});

 factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      description: json['description'],
      urlToImage: json['urlToImage'],
      publishedAt: json['publishedAt'],
      url: json['url'],
    );
  }

  

}
