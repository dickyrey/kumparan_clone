import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:kumparan_clone/src/data/models/boarding_model.dart';
import 'package:kumparan_clone/src/data/models/boarding_response.dart';
import 'package:kumparan_clone/src/data/models/category_model.dart';
import 'package:kumparan_clone/src/data/models/category_response.dart';

// ignore: one_member_abstracts
abstract class BoardingRemoteDataSource {
  Future<List<BoardingModel>> getBoardingList();
}

class BoardingRemoteDataSourceImpl extends BoardingRemoteDataSource {
  @override
  Future<List<BoardingModel>> getBoardingList() async {
    // Load the JSON data from the mock_json/boarding.json file
    final jsonData =
        await root.rootBundle.loadString('mock_json/boarding.json');

    // Decode the JSON data and convert it to a BoardingResponse object
    final response = BoardingResponse.fromJson(
      json.decode(jsonData) as Map<String, dynamic>,
    );

    // Return the list of categories from the response
    return response.boardingList;
  }
}
