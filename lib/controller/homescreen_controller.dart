import 'dart:convert';
import 'dart:developer';
import 'package:car_app_main_project/model/homescreen_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomescreenController with ChangeNotifier {
  newsmodel? newmodel;
  bool isLoading = false;
  List<Article> newsArticle = [];

  Future<void> getData() async {
    isLoading = true;
    notifyListeners();

    Uri newsUri = Uri.parse(
        "https://newsapi.org/v2/everything?q=keyword&apiKey=8dd5d4482b1644e1816b5b2c09706214");

    try {
      var response = await http.get(newsUri);
      if (response.statusCode == 200) {
        newmodel = newsmodel.fromJson(json.decode(response.body));
        newsArticle = newmodel?.articles ?? [];
        log(newsArticle.isNotEmpty
            ? newsArticle[0].title.toString()
            : 'No articles found');
      } else {
        log('Failed to load news: ${response.statusCode}');
      }
    } catch (e) {
      log('Error: $e');
    }

    isLoading = false;
    notifyListeners();
  }
}
