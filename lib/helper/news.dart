import 'dart:convert';
import 'package:daily_news/models/article_model.dart';
import 'package:http/http.dart';

class News {
  List<ArticleModel> news = [];
  Future<void> getNews() async {
    String url =
        'https://newsapi.org/v2/top-headlines?country=in&apiKey=385097b55a6640d487d15e957a86935f';

    var response = await get(Uri.parse(url));
    var jsonData = jsonDecode(response.body);
    if (jsonData['status'] == 'ok') {
      jsonData['articles'].forEach((element) {
        if (element["urlToImage"] != null && element['description'] != [null]) {
          print("error");
          ArticleModel articleModel = ArticleModel(
              title: element['title'],
              author: element['author'],
              // author: "sachin",
              description: element['description'],
              url: element['url'],
              urlToImage: element['urlToImage'],
              content: element['content']
          );
          news.add(articleModel);
        }
      }
      );
    }
  }
}
