import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/data/models/comment_model.dart';

class CommentResponse extends Equatable {
  const CommentResponse({
    required this.commentList,
  });

  factory CommentResponse.fromJson(Map<String, dynamic> json) {
    return CommentResponse(
      commentList: List<CommentModel>.from(
        (json['data'] as List)
            .map((e) => CommentModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.body != ''),
      ),
    );
  }

  final List<CommentModel> commentList;

  @override
  List<Object?> get props => [commentList];
}
