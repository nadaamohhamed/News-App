class ArticleModel {
  final String title;
  final String description;
  final String imageUrl;
  final String articleUrl;

  ArticleModel({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.articleUrl,
  });

  factory ArticleModel.fromJSON(Map<String, dynamic> json) {
    return ArticleModel(
      title: json['title'],
      description: json['description'],
      imageUrl: json['urlToImage'],
      articleUrl: json['url'],
    );
  }
}
