import 'package:equatable/equatable.dart';
import 'package:kumparan_clone/src/data/models/boarding_model.dart';

class BoardingResponse extends Equatable {
  const BoardingResponse({
    required this.boardingList,
  });

  factory BoardingResponse.fromJson(Map<String, dynamic> json) {
    return BoardingResponse(
      boardingList: List<BoardingModel>.from(
        (json['data'] as List)
            .map((e) => BoardingModel.fromJson(e as Map<String, dynamic>))
            .where((element) => element.title != ''),
      ),
    );
  }

  final List<BoardingModel> boardingList;

  @override
  List<Object?> get props => [boardingList];
}
