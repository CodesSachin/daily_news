class ArticleModel{
  String author;
  String title;
  String description;
  String url;
  var urlToImage;
  String content;

  ArticleModel({required this.title, required this.author, required this.description,required this.url, this.urlToImage, required this.content, });
}