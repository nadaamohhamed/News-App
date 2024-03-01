import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

// set your API key that is associated with your registered account in newsapi.org
const apiKey = '';

class NewsService {
  final Dio dio;

  NewsService(this.dio);

  Future<List<ArticleModel>> getCategoryNews({required category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$category&apiKey=$apiKey');
      Map<String, dynamic> data = response.data;
      List<dynamic> articles = data['articles'];
      List<ArticleModel> returnedArticles = [];

      for (final article in articles) {
        if (article['title'] != null &&
            article['description'] != null &&
            article['urlToImage'] != null &&
            article['url'] != null) {
          returnedArticles.add(ArticleModel.fromJSON(article));
        }
      }
      return returnedArticles;
    } catch (error) {
      return [];
    }
  }
}
