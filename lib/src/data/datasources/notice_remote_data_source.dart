import 'dart:convert';

import 'package:flutter/services.dart' as root;
import 'package:kumparan_clone/src/data/models/notice_model.dart';
import 'package:kumparan_clone/src/data/models/notice_response.dart';

// ignore: one_member_abstracts
abstract class NoticeRemoteDataSource {
  Future<List<NoticeModel>> getNoticeList();
}

class NoticeRemoteDataSourceImpl extends NoticeRemoteDataSource {
  @override
  Future<List<NoticeModel>> getNoticeList() async {
    /// Load the JSON data from the `mock_json/notice.json` file
    final jsonData = await root.rootBundle.loadString('mock_json/notice.json');

    /// Decode the `JSON` data and convert it to a ArticleResponse object
    final response = NoticeResponse.fromJson(
      json.decode(jsonData) as Map<String, dynamic>,
    );

    /// Return the list of categories from the response
    return response.noticeList;
  }
}
