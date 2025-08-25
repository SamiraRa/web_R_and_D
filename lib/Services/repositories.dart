import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:web_dynamic_form_flutter/Model/unsplash_image_model.dart';
import 'package:web_dynamic_form_flutter/Services/data_provider.dart';

class Repositories {
  Future<dynamic> fetchData(String endpoint) async {
    try {
      return {"message": "Data fetched from $endpoint"};
    } catch (e) {
      throw Exception("Failed to fetch data: $e");
    }
  }

  Future getImageRepo(pageNumber) async {
    // Map imageList = {};

    try {
      final http.Response response = await DataProviders().getImageDP(pageNumber);
      List<UnsplashImgData> imageList = unsplashImgDataFromJson(response.body);
      // List imageList = jsonDecode(response.body);

      return imageList;
    } catch (e) {
      print(e);
    }
  }

  // Future<void> saveData(String key, dynamic value) async {
  //   try {
  //     print("Data saved: $key -> $value");
  //   } catch (e) {
  //     throw Exception("Failed to save data: $e");
  //   }
  // }
}
