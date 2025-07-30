class NewsModel {
  String title;
  String? description;
  String? urlToImage;
  String url;

  NewsModel({required this.title,required this.description,required this.urlToImage,required this.url});

 factory NewsModel.fromJson(Map<String, dynamic> json) {
    return NewsModel(
      title: json['title'],
      description: json['description']?? 'No description available',
      urlToImage: json['urlToImage']?? "https://images.pexels.com/photos/3747132/pexels-photo-3747132.jpeg?_gl=1*ndk43s*_ga*Mjg2NDQzOTk0LjE3NTM4MjIxMDY.*_ga_8JE65Q40S6*czE3NTM4MjYzNjckbzIkZzEkdDE3NTM4MjY5MTYkajMxJGwwJGgw",
      url: json['url'],
    );
  }

  

}
